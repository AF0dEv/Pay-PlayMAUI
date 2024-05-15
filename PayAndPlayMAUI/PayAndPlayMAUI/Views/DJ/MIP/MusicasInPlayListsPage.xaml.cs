using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;
using PayAndPlayMAUI.Views.DJ.Musicas;
using PayAndPlayMAUI.Views.DJ.PlayLists;

namespace PayAndPlayMAUI.Views.DJ.MIP;

public partial class MusicasInPlayListsPage : ContentPage
{
	public MusicasInPlayListsService _mipService { get; set; }
	public List<MusicaInPlayListModel> mipList { get; set; }
    public ListagensService _listService { get; set; }

    public MusicasInPlayListsPage()
	{
		InitializeComponent();
		this._mipService = new MusicasInPlayListsService();
		this.mipList = new List<MusicaInPlayListModel>();
        this._listService = new ListagensService();
    }
    
    
    // Call the base implementation, onAppearing means the page is about to be displayed on the screen and when it does, it will call this method
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

        this.mipList = await this._mipService.GetMusicasInPlayListsForDj(DjId);

        this.loadingIndicator.IsRunning = false;
        this.loadingIndicator.IsVisible = false;

        if (this.mipList != null)
        {
            // Set the ItemsSource of the ListView to the list of MusicaInPlayList, this will make the ListView display the MusicaInPlayList, this.MusicasInPlayList is the name of the ListView in the XAML file
            this.MipCV.ItemsSource = this.mipList.ToList();
        }
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

    private async void btnAddMusica_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(CreateMusicasInPlayListsPage));
    }

    private async void btnEditar_Clicked(object sender, EventArgs e)
    {
        if (this.mipList.Count == 0)
        {
            return;
        }
        MusicaInPlayListModel mipSelecionado = (MusicaInPlayListModel)this.MipCV.SelectedItem;

        if (mipSelecionado != null)
        {
            // Used Navigation.PushAsync to navigate to the EditMusicasInPlayListsPage instead of Shell.Current.GoToAsync because this why we can pass the selected MusicaInPlayList to the EditMusicasInPlayListsPage and Shell.Current.GoToAsync does not allow us to pass parameters
            await Navigation.PushAsync(new EditMusicasInPlayListsPage(mipSelecionado));
        }
        else
        {
            await DisplayAlert("Erro", "Selecione uma Musica in PlayList", "OK");
        }
    }

    private async void btnRemover_Clicked(object sender, EventArgs e)
    {
        if (this.mipList.Count == 0)
        {
            return;
        }
        MusicaInPlayListModel mipSelecionado = (MusicaInPlayListModel)this.MipCV.SelectedItem;
        if (mipSelecionado != null)
        {
            bool displayAlertResult = await DisplayAlert("Remover Musica in PlayList", "Tem a certeza que deseja remover a Musica in PlayList?", "Sim", "Não");
            if (displayAlertResult)
            {
                bool result = await this._mipService.DeleteMusicaInPlayList(mipSelecionado);
                this.MipCV.ItemsSource = await this._mipService.GetMusicasInPlayListsForDj(Preferences.Get("ID", 0));
                this.MipCV.SelectedItem = null;
            }
        }
        else
        {
            await DisplayAlert("Erro", "Selecione uma Musica in PlayList", "OK");
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
}