using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;
using System.Collections.ObjectModel;
using System.Windows.Input;

namespace PayAndPlayMAUI.Views.USER.PedidosUser;

public partial class PagamentoUserPage : ContentPage
{
	public PedidosService _pedidoService { get; set; }
    public MusicasService _musicaService { get; set; }
    public PlayListsService _playlistService { get; set; }
    public MusicasInPlayListsService _mipService { get; set; }
    public MusicaInPlayListModel mip { get; set; }
    public MusicaModel musica { get; set; }
    public ObservableCollection<PedidoModel> PedidosPendentesList { get; set; }
	public PedidoModel pedido { get; set; }
	public ICommand ConfirmarCommand { get; set; }
    public ICommand RecusarCommand { get; set; }

    public PagamentoUserPage()
	{
		InitializeComponent();

		this._pedidoService = new PedidosService();
		this.pedido = new PedidoModel();
        this._musicaService = new MusicasService();
        this._playlistService = new PlayListsService();
        this._mipService = new MusicasInPlayListsService();

        this.mip = new MusicaInPlayListModel();
        this.musica = new MusicaModel();

        this.PedidosCV.BindingContext = this;

        this.ConfirmarCommand = new Command<PedidoModel>(ConfirmarPedido);
        this.RecusarCommand = new Command<PedidoModel>(RecusarPedido);
    }
    protected override async void OnAppearing()
    {
        base.OnAppearing();
        int DjId = int.Parse(Preferences.Get("DjId_Pedidos", ""));
        int Id = Preferences.Get("ID", 0);
        int mipId = Preferences.Get("MipId", 0);

        lblProfile.Text = Preferences.Get("UserName", "");

        this.loadingIndicator.IsRunning = true;
        this.loadingIndicator.IsVisible = true;

        // Fetch the MusicaInPlayList object
        this.mip = await this._mipService.GetMusicaInPlayList(mipId);

        // Fetch the Musica object
        this.musica = await this._musicaService.GetMusica(mip.MusicaId);


        this.pedido.UtilizadorId = Id;
        this.pedido.DJId= DjId;
        this.pedido.MusicaInPlayListId = mipId;
        this.pedido.Custo_Pedido = musica.Custo;   
        this.pedido.Data = DateOnly.FromDateTime(DateTime.Now);
        this.pedido.Estado = "PENDENTE";

        try
        {
            PedidoModel? pedidoCriado = new PedidoModel();
            pedidoCriado = await this._pedidoService.AddPedido(this.pedido);
            if (pedidoCriado != null)
            {

                this.PedidosPendentesList = new ObservableCollection<PedidoModel>(await this._pedidoService.GetPedidosPendentesByUtilizador(Id));
                if (this.PedidosPendentesList.Count > 0)
                {
                    foreach (PedidoModel p in this.PedidosPendentesList)
                    {
                        MusicaModel musica = await this._musicaService.GetMusica(p.MusicaInPlayList.MusicaId);
                        PlayListModel playlist = await this._playlistService.GetPlayList(p.MusicaInPlayList.PlayListId);

                        p.MusicaInPlayList.Musica = musica;
                        p.MusicaInPlayList.PlayList = playlist;
                    }

                    this.PedidosCV.ItemsSource = this.PedidosPendentesList;
                    this.loadingIndicator.IsRunning = false;
                    this.loadingIndicator.IsVisible = false;
                }
                else
                {
                    await DisplayAlert("Erro", "Pedido Nao Foi Criado Corretamente!", "OK");
                    this.loadingIndicator.IsRunning = false;
                    this.loadingIndicator.IsVisible = false;
                    await Shell.Current.GoToAsync(nameof(PedidosUserPage));
                }

            }
        }
        catch (Exception)
        {
            await DisplayAlert("Erro", "Não Foi Possivel Criar Pedido", "OK");
        }
    }
    private async void btnHomeIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(ProfileUserPage));
    }
    private async void btnUserMusicIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(PedidosUserPage));
    }
    private async void ConfirmarPedido(PedidoModel pedido)
    {
        this.pedido = pedido;
        if (this.pedido != null)
        {
            this.pedido.Estado = "PAGO";
            PedidoModel pedidoPago = new PedidoModel();
            pedidoPago = await this._pedidoService.EditPedido(this.pedido);
            if (pedidoPago != null)
            {
                await DisplayAlert("Sucesso", "Pedido Pago com Sucesso. Obrigado!", "OK");
                await Shell.Current.GoToAsync(nameof(ProfileUserPage));
            }
            else
            {
                await DisplayAlert("ERRO", "Erro no Pagamento do Pedido. Por Favor Tente de Novo!", "OK");
                await Shell.Current.GoToAsync(nameof(PedidosUserPage));
            }
        }

    }
    private async void RecusarPedido(PedidoModel pedido)
    {
        this.pedido = pedido;
        if (this.pedido != null)
        {
            this.pedido.Estado = "RECUSADO";
            PedidoModel pedidoRecusado = new PedidoModel();
            pedidoRecusado = await this._pedidoService.EditPedido(this.pedido);
            if (pedidoRecusado != null)
            {
                await DisplayAlert("Sucesso", "Pedido Cancelado com Sucesso!", "OK");
                await Shell.Current.GoToAsync(nameof(ProfileUserPage));
            }
            else
            {
                await DisplayAlert("ERRO", "Erro no Cancelamento do Pedido. Por Favor Tente de Novo!", "OK");
                await Shell.Current.GoToAsync(nameof(PedidosUserPage));
            }
        }
    }
}