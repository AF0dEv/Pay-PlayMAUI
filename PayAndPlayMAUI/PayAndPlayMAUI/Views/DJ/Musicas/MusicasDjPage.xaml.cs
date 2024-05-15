using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;
using PayAndPlayMAUI.Views.DJ.MIP;
using PayAndPlayMAUI.Views.DJ.PlayLists;

namespace PayAndPlayMAUI.Views.DJ.Musicas;

public partial class MusicasDjPage : ContentPage
{
    public ListagensService _listService { get; set; }
    public MusicasService _musicasService { get; set; }
    public List<MusicaModel> MusicasList { get; set; }
    public MusicasDjPage()
	{
		InitializeComponent();
        this._listService = new ListagensService();
        this._musicasService = new MusicasService();
        this.MusicasList = new List<MusicaModel>();
    }
    protected async override void OnAppearing()
    {
        base.OnAppearing();

        int DjId = Preferences.Get("ID", 0);
        string UserName = Preferences.Get("UserName", "");


        lblProfile.Text = UserName.ToString();

        decimal saldo = await this._listService.CalculoSaldoDJ(DjId);
        lblSaldo.Text = saldo.ToString() + "$";

        this.loadingIndicator.IsRunning = true;
        this.loadingIndicator.IsVisible = true;

        this.MusicasList = await this._musicasService.GetMusicas();

        this.loadingIndicator.IsRunning = false;
        this.loadingIndicator.IsVisible = false;

        if (this.MusicasList != null)
        {
            this.MusicaCV.ItemsSource = this.MusicasList.ToList();
        }

        this.MusicaCV.SelectedItem = null;
    }
    private async void btnLevantar_Clicked(object sender, EventArgs e)
    {
        string saldoFormatado = lblSaldo.Text.Replace("$", string.Empty);
        decimal saldo = Convert.ToDecimal(saldoFormatado);
        int DjId = Preferences.Get("ID", 0);

        if (saldo > 0)
        {
            PedidosService _pedidoService = new PedidosService();
            PedidoModel pedido = new PedidoModel
            {
                DJId = Preferences.Get("ID", 0),
                UtilizadorId = 1,
                MusicaInPlayListId = 3,
                Custo_Pedido = 0 - saldo,
                Data = DateOnly.FromDateTime(DateTime.Now),
                Estado = "LEVANTAMENTO",
            };
            PedidoModel? pedidoCriado = new PedidoModel();

            await Task.Run(async () =>
            {
                pedidoCriado = await _pedidoService.LevantarSaldo(pedido);
            });

            if (pedidoCriado != null)
            {
                decimal saldoNovo = await _listService.CalculoSaldoDJ(DjId);
                lblSaldo.Text = saldoNovo.ToString() + "$";
                await DisplayAlert("Sucesso", "Levantamento Efetuado Com Sucesso", "OK");
            }
            else
            {
                await DisplayAlert("Erro", "Levantamento Não Efetuado", "OK");
            }

        }
        else
        {
            await DisplayAlert("Erro", "Não tem Saldo Suficiente para Levantar", "Ok");
        }
    }

    private async void btnMoneyIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(PedidosDjPage));
    }

    private async void btnMipIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(MusicasInPlayListsPage));
    }

    private async void btnHomeIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(ProfileDjPage));
    }

    private async void btnPlaylistIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(PlayListsDjPage));
    }

    private async void btnMusicIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(MusicasDjPage));
    }

    private async void btnEditar_Clicked(object sender, EventArgs e)
    {
        if (this.MusicasList.Count == 0)
        {
            return;
        }
        MusicaModel musicaSelecionada = (MusicaModel)this.MusicaCV.SelectedItem;

        if (musicaSelecionada != null)
        {
            await Navigation.PushAsync(new EditMusicasDjPage(musicaSelecionada));
        }
        else
        {
            await DisplayAlert("Erro", "Selecione uma Musica", "OK");
        }
    }
    private async void btnRemover_Clicked(object sender, EventArgs e)
    {
        if (this.MusicasList.Count == 0)
        {
            return;
        }
        MusicaModel musicaSelecionada = (MusicaModel)this.MusicaCV.SelectedItem;
        if (musicaSelecionada != null)
        {
            bool displayAlertResult = await DisplayAlert("Remover Musica", "Tem a certeza que deseja remover a Musica?", "Sim", "Não");
            if (displayAlertResult)
            {
                bool result = await this._musicasService.DeleteMusica(musicaSelecionada);
                this.MusicaCV.ItemsSource = await this._musicasService.GetMusicas();
                this.MusicaCV.SelectedItem = null;
            }
        }
        else
        {
            await DisplayAlert("Erro", "Selecione uma Musica", "OK");
        }
    }

    private async void btnAddMusica_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(CreateMusicasDjPage));
    }
}