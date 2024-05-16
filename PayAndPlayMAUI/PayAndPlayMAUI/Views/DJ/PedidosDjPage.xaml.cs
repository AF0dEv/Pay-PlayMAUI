using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;
using PayAndPlayMAUI.Views.DJ.MIP;
using PayAndPlayMAUI.Views.DJ.Musicas;
using PayAndPlayMAUI.Views.DJ.PlayLists;
using System.Collections.ObjectModel;
using System.Windows.Input;

namespace PayAndPlayMAUI.Views.DJ;

public partial class PedidosDjPage : ContentPage
{
    public MusicasService _musicaService { get; set; }
    public PlayListsService _playlistService { get; set; }
    public ListagensService _listService { get; set; }
    public PedidosService _pedidosService { get; set; }

    // Before - List<PedidoModel>, because we need to use the Command, we need to change to ObservableCollection so the object can be retrieved
    //public List<PedidoModel> PedidosPendentesList{ get; set; }
    //public List<PedidoModel> PedidosPagosList { get; set; }
    //public List<PedidoModel> PedidosConcluidosList { get; set; }
    //public List<PedidoModel> PedidosRecusadosList { get; set; }

    // After - ObservableCollection<PedidoModel>
    public ObservableCollection<PedidoModel> PedidosPendentesList { get; set; }
    public ObservableCollection<PedidoModel> PedidosPagosList { get; set; }
    public ObservableCollection<PedidoModel> PedidosConcluidosList { get; set; }
    public ObservableCollection<PedidoModel> PedidosRecusadosList { get; set; }

    // Add Command to get the object when accept or refuse the pedido
    public ICommand ConfirmarCommand { get; set; }
    public ICommand RecusarCommand { get; set; }
    public PedidosDjPage()
	{
		InitializeComponent();
        this._listService = new ListagensService();
        this._pedidosService = new PedidosService();
        this._playlistService = new PlayListsService();
        this._musicaService = new MusicasService();

        //this.PedidosPendentesList = new List<PedidoModel>();
        //this.PedidosPagosList = new List<PedidoModel>();
        //this.PedidosConcluidosList = new List<PedidoModel>();
        //this.PedidosRecusadosList = new List<PedidoModel>();

        PedidosPagosCV.BindingContext = this;
        // Add Command with the method to accept or refuse the pedido
        ConfirmarCommand = new Command<PedidoModel>(ConfirmarPedido);
        RecusarCommand = new Command<PedidoModel>(RecusarPedido);

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

        // Pedidos Pendentes

        this.PedidosPendentesList = new ObservableCollection<PedidoModel>(await this._pedidosService.GetPedidosPendentesForDJ(DjId));

        if (this.PedidosPendentesList.Count > 0)
        {
            foreach (PedidoModel pedido in this.PedidosPendentesList)
            {
                MusicaModel musica = await this._musicaService.GetMusica(pedido.MusicaInPlayList.MusicaId);
                PlayListModel playlist = await this._playlistService.GetPlayList(pedido.MusicaInPlayList.PlayListId);

                pedido.MusicaInPlayList.Musica = musica;
                pedido.MusicaInPlayList.PlayList = playlist;
            }
            lblPendentes.IsVisible = true;
            this.PedidosPendentesCV.ItemsSource = this.PedidosPendentesList.ToList();
        }
        this.PedidosPendentesCV.SelectedItem = null;

        // Pedidos Pagos 

        this.PedidosPagosList = new ObservableCollection<PedidoModel>(await this._pedidosService.GetPedidosPagosForDJ(DjId));

        if (this.PedidosPagosList.Count > 0)
        {
            foreach (PedidoModel pedido in this.PedidosPagosList)
            {
                MusicaModel musica = await this._musicaService.GetMusica(pedido.MusicaInPlayList.MusicaId);
                PlayListModel playlist = await this._playlistService.GetPlayList(pedido.MusicaInPlayList.PlayListId);

                pedido.MusicaInPlayList.Musica = musica;
                pedido.MusicaInPlayList.PlayList = playlist;
            }
            lblPagos.IsVisible = true;
            this.PedidosPagosCV.ItemsSource = this.PedidosPagosList.ToList();
        }
        this.PedidosPagosCV.SelectedItem = null;

        // Pedidos Concluidos

        this.PedidosConcluidosList = new ObservableCollection<PedidoModel>(await this._pedidosService.GetPedidosConcluidosForDJ(DjId));

        if (this.PedidosConcluidosList.Count > 0)
        {

            lblConcluidos.IsVisible = true;
            foreach (PedidoModel pedido in this.PedidosConcluidosList)
            {
                MusicaModel musica = await this._musicaService.GetMusica(pedido.MusicaInPlayList.MusicaId);
                PlayListModel playlist = await this._playlistService.GetPlayList(pedido.MusicaInPlayList.PlayListId);

                pedido.MusicaInPlayList.Musica = musica;
                pedido.MusicaInPlayList.PlayList = playlist;
            }
            this.PedidosConcluidosCV.ItemsSource = this.PedidosConcluidosList.ToList();
        }
        this.PedidosConcluidosCV.SelectedItem = null;

        // Pedidos Recusados

        this.PedidosRecusadosList = new ObservableCollection<PedidoModel>(await this._pedidosService.GetPedidosRecusadosForDJ(DjId));
        if (this.PedidosRecusadosList.Count > 0)
        {
            foreach (PedidoModel pedido in PedidosRecusadosList)
            {
                MusicaModel musica = await this._musicaService.GetMusica(pedido.MusicaInPlayList.MusicaId);
                PlayListModel playlist = await this._playlistService.GetPlayList(pedido.MusicaInPlayList.PlayListId);

                pedido.MusicaInPlayList.Musica = musica;
                pedido.MusicaInPlayList.PlayList = playlist;
            }
            lblRecusados.IsVisible = true;
            this.PedidosRecusadosCV.ItemsSource = this.PedidosRecusadosList.ToList();
        }
        this.PedidosRecusadosCV.SelectedItem = null;

        this.loadingIndicator.IsRunning = false;
        this.loadingIndicator.IsVisible = false;
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

    private async void ConfirmarPedido(PedidoModel pedido)
    {
        // IF THE UI UPDATED WHEN THE PEDIDO IS CONFIRMED OR DENIED THIS IS HOW THE CODE WOULD BE, BUT SINCE IT ISNT WORKING (DONT KNOW WHY, IT SHOULD WORK, IM REMOVING THE PEDIDO BEFORE CHANGING IT SO THE PROGRAM KNOWS WHICH ONE IT IS AND ONLY ADDING TO THE OTHER LIST THE NEW PEDIDO BUT THE UI DOESNT UPDATE) ILL HAVE TO RELOAD THE ALL PAGE (PERFORMANCE ISSUES SICE RETRIEVING THE ALL DATA ALL OVER AGAIN BUT IT IS WHAT IT IS)

        //if (pedido != null)
        //{
        //    // Remove the pedido from PedidosPagosList before modifying it
        //    Device.BeginInvokeOnMainThread(() => PedidosPagosList.Remove(pedido));

        //    pedido.Estado = "CONCLUIDO";
        //    PedidoModel pedidoEditado = await this._pedidosService.EditPedido(pedido);
        //    if (pedidoEditado != null)
        //    {
        //        await DisplayAlert("Pedido Aceite", $"Pedido Musica: {pedidoEditado.MusicaInPlayList.Musica.Nome} Aceite !", "OK");
        //        decimal saldo = await this._listService.CalculoSaldoDJ(Preferences.Get("ID", 0));
        //        lblSaldo.Text = saldo.ToString() + "$";

        //        // Add the modified pedido to PedidosConcluidosList
        //        Device.BeginInvokeOnMainThread(() => PedidosConcluidosList.Add(pedidoEditado));
        //    }
        //    else
        //    {
        //        await DisplayAlert("Erro", "Não foi Possivel Aceitar o Pedido !", "OK");
        //    }
        //}
        //else
        //{
        //    await DisplayAlert("Erro", "Pedido não foi Selecionado, Contacte Administrador!", "OK");
        //}

        if (pedido != null)
        {
            pedido.Estado = "CONCLUIDO";
            PedidoModel pedidoEditado = await this._pedidosService.EditPedido(pedido);
            if (pedidoEditado != null)
            {
                await DisplayAlert("Pedido Aceite", $"Pedido Musica: {pedidoEditado.MusicaInPlayList.Musica.Nome} Aceite !", "OK");

                decimal saldo = await this._listService.CalculoSaldoDJ(Preferences.Get("ID", 0));
                lblSaldo.Text = saldo.ToString() + "$";

                // reload the page
                OnAppearing();
            }
            else
            {
                await DisplayAlert("Erro", "Não foi Possivel Aceitar o Pedido !", "OK");
            }
        }
        else
        {
            await DisplayAlert("Erro", "Pedido não foi Selecionado, Contacte Administrador!", "OK");
        }
    }

    private async void RecusarPedido(PedidoModel pedido)
    {
        if (pedido != null)
        {
            pedido.Estado = "RECUSADO";
            PedidoModel pedidoEditado = await this._pedidosService.EditPedido(pedido);
            if (pedidoEditado != null)
            {
                await DisplayAlert("Pedido Recusado", $"Pedido Musica: {pedido.MusicaInPlayList.Musica.Nome} Recusado !", "OK");

                // reload the page
                OnAppearing();

            }
            else
            {
                await DisplayAlert("Erro", "Não foi Possivel Aceitar o Pedido !", "OK");
            }
        }
        else
        {
            await DisplayAlert("Erro", "Pedido não foi Selecionado, Contacte Administrador!", "OK");
        }
    }

    private async void btnQRCode_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(QRCodePage));
    }
}