using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;
using PayAndPlayMAUI.Views.DJ.MIP;
using PayAndPlayMAUI.Views.DJ.Musicas;

namespace PayAndPlayMAUI.Views.DJ.PlayLists;

public partial class PlayListsDjPage : ContentPage
{
    public ListagensService _listService { get; set; }
    public PlayListsService _playListsService { get; set; }
    public List<PlayListModel> PlayListList { get; set; }

    public PlayListsDjPage()
	{
		InitializeComponent();
        this._playListsService = new PlayListsService();
        this.PlayListList = new List<PlayListModel>();
        this._listService = new ListagensService();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        int DjId = Preferences.Get("ID", 0);
        string UserName = Preferences.Get("UserName", "");


        lblProfile.Text = UserName.ToString();

        decimal saldo = await this._listService.CalculoSaldoDJ(DjId);
        lblSaldo.Text = saldo.ToString() + "$";

        this.loadingIndicator.IsRunning = true;
        this.loadingIndicator.IsVisible = true;

        this.PlayListList = await this._playListsService.GetDjPlayLists(Preferences.Get("ID", 0));

        this.loadingIndicator.IsRunning = false;
        this.loadingIndicator.IsVisible = false;

        if (this.PlayListList != null)
        {
            this.PlayListCV.ItemsSource = this.PlayListList.ToList();
        }

        this.PlayListCV.SelectedItem = null;
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

    private async void btnAddPlayList_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(CreatePlayListsPage));
    }

    private async void btnEditar_Clicked(object sender, EventArgs e)
    {
        if (this.PlayListList.Count == 0)
        {
            return;
        }
        PlayListModel playlistSelecionada = (PlayListModel)this.PlayListCV.SelectedItem;

        if (playlistSelecionada != null)
        {
            await Navigation.PushAsync(new EditPlayListsPage(playlistSelecionada));
        }
        else
        {
            await DisplayAlert("Erro", "Selecione uma PlayList", "OK");
        }
    }

    private async void btnRemover_Clicked(object sender, EventArgs e)
    {
        if (this.PlayListList.Count == 0)
        {
            return;
        }
        PlayListModel playlistSelecionada = (PlayListModel)this.PlayListCV.SelectedItem;

        if (playlistSelecionada != null)
        {
            bool displayAlertResult = await DisplayAlert("Remover PlayList", "Tem a certeza que deseja remover a PlayList?", "Sim", "Não");

            if (displayAlertResult)
            {
                bool result = await this._playListsService.DeletePlayList(playlistSelecionada);

                this.PlayListCV.ItemsSource = await this._playListsService.GetDjPlayLists(Preferences.Get("ID", 0));

                this.PlayListCV.SelectedItem = null;
            }
        }
        else
        {
            await DisplayAlert("Erro", "Selecione uma PlayList", "OK");
        }
    }
}