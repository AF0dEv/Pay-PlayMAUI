using Microcharts;
using Microsoft.Maui.Controls.PlatformConfiguration.WindowsSpecific;
using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;
using PayAndPlayMAUI.Views.DJ.MIP;
using PayAndPlayMAUI.Views.DJ.Musicas;
using PayAndPlayMAUI.Views.DJ.PlayLists;
using SkiaSharp;

namespace PayAndPlayMAUI.Views.DJ;
public partial class ProfileDjPage : ContentPage
{
    ListagensService _listService { get; set; }
	public ProfileDjPage()
	{
        this._listService = new ListagensService();
        InitializeComponent();
	}
    protected override async void OnAppearing()
    {
        base.OnAppearing();

        int DjId = Preferences.Get("ID", 0);
        string UserName = Preferences.Get("UserName", "");


        lblProfile.Text = UserName.ToString();

        decimal saldo = await _listService.CalculoSaldoDJ(DjId);
        lblSaldo.Text = saldo.ToString() +"$";

        string musicaMaisPedida = await _listService.ListarMusicasMaisPedidas(DjId);
        lblMusicaMaisPedida.Text = musicaMaisPedida;

        string utilizadorMaisPedidos = await _listService.ListarUtilizadorMaisPedidos(DjId);
        lblUtilizadorMaisPedidos.Text = utilizadorMaisPedidos;

        string utilizadorMaisGastos = await _listService.ListarUtilizadorMaisGastos(DjId);
        lblUtilizadorMaisGastos.Text = utilizadorMaisGastos;

        string musicaMenosPedida = await _listService.ListarMusicasMenosPedidas(DjId);
        lblMusicaMenosPedida.Text = musicaMenosPedida;

        string utilizadorMenosPedidos = await _listService.ListarUtilizadorMenosPedidos(DjId);
        lblUtilizadorMenosPedidos.Text = utilizadorMenosPedidos;

        string utilizadorMenosGastos = await _listService.ListarUtilizadorMenosGastos(DjId);
        lblUtilizadorMenosGastos.Text = utilizadorMenosGastos;
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

    private void rbtMes_CheckedChanged(object sender, CheckedChangedEventArgs e)
    {
        if (rbtMes.IsChecked)
        {
            // Hide the Periodo Items
            lblMesInicial.IsVisible = false;
            lblMesFinal.IsVisible = false;
            dpMesInicio.IsVisible = false;
            dpMesFinal.IsVisible = false;
            btnMostrarGanhos.IsVisible = false;
            ChartPeriodo.IsVisible = false;

            // Show the Mes Items
            lblMes.IsVisible = true;
            dpMes.IsVisible = true;
            ChartMes.IsVisible = true;
        }
        else
        {
            // Show the Periodo Items
            lblMesInicial.IsVisible = true;
            lblMesFinal.IsVisible = true;
            dpMesInicio.IsVisible = true;
            dpMesFinal.IsVisible = true;
            btnMostrarGanhos.IsVisible = true;
            ChartPeriodo.IsVisible = true;
            dpMesInicio.Date = new DateTime(DateTime.Now.Year, 1, 1);

            // Hide the Mes Items
            lblMes.IsVisible = false;
            dpMes.IsVisible = false;
            ChartMes.IsVisible = false;
        }
    }

    private void rbtPeriodo_CheckedChanged(object sender, CheckedChangedEventArgs e)
    {
        if(rbtPeriodo.IsChecked)
        {
            // Show the Periodo Items
            lblMesInicial.IsVisible = true;
            lblMesFinal.IsVisible = true;
            dpMesInicio.IsVisible = true;
            dpMesFinal.IsVisible = true;
            btnMostrarGanhos.IsVisible = true;
            ChartPeriodo.IsVisible = true;
            dpMesInicio.Date = new DateTime(DateTime.Now.Year, 1, 1);

            // Hide the Mes Items
            lblMes.IsVisible = false;
            dpMes.IsVisible = false;
            ChartMes.IsVisible = false;
        }
        else
        {
            // Hide the Periodo Items
            lblMesInicial.IsVisible = false;
            lblMesFinal.IsVisible = false;
            dpMesInicio.IsVisible = false;
            dpMesFinal.IsVisible = false;
            btnMostrarGanhos.IsVisible = false;
            ChartPeriodo.IsVisible = false;

            // Show the Mes Items
            lblMes.IsVisible = true;
            dpMes.IsVisible = true;
            ChartMes.IsVisible = true;
        }
    }

    private async void dpMes_DateSelected(object sender, DateChangedEventArgs e)
    {
        int month = dpMes.Date.Month;

        int DjId = Preferences.Get("ID", 0);

        decimal ganhos = await _listService.ListarGanhosMes(month, DjId);

        if (ganhos > 0) 
        { 
        List<ChartEntry> entries = new List<ChartEntry>
        {
            new ChartEntry((float)ganhos)
            {
                ValueLabelColor = SKColor.Parse("#38BD2F"),
                Label = dpMes.Date.ToString("MMMM"),
                ValueLabel = ganhos.ToString(),
                Color = SKColor.Parse("#38BD2F"),
            }
        };

        ChartMes.Chart= new BarChart 
        {
            Entries = entries,
            BackgroundColor = SKColors.Transparent,
            LabelTextSize = 50,
            ValueLabelOrientation = Orientation.Horizontal,
            LabelOrientation = Orientation.Horizontal,
            Margin = 50,
            
        };

        ChartMes.IsVisible = true;
        }
        else
        {
            DisplayAlert("Erro", "Não existem ganhos para o mês selecionado", "OK");
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
                DisplayAlert("Sucesso", "Levantamento Efetuado Com Sucesso", "OK");
            }
            else
            {
                DisplayAlert("Erro", "Levantamento Não Efetuado", "OK");
            }

        }
        else
        {
            DisplayAlert("Erro", "Não tem Saldo Suficiente para Levantar", "Ok");
        }

    }

    private async void btnMostrarGanhos_Clicked(object sender, EventArgs e)
    {
        int dataInicio = dpMesInicio.Date.Month;
        int dataFinal = dpMesFinal.Date.Month;

        int DjId = Preferences.Get("ID", 0);

        Dictionary<string, decimal> ganhosPeriodo = await _listService.ListarGanhosPeriodo(dataInicio, dataFinal, DjId);

        if (ganhosPeriodo.Count > 0)
        {
            List<ChartEntry> entries = ganhosPeriodo.Select(g =>
                new ChartEntry((float)g.Value)
                {
                    ValueLabelColor = SKColor.Parse("#38BD2F"),
                    Label = g.Key,
                    ValueLabel = g.Value.ToString(),
                    Color = SKColor.Parse("#38BD2F"),
                }).ToList();

            ChartPeriodo.Chart = new BarChart
            {
                Entries = entries,
                BackgroundColor = SKColors.Transparent,
                LabelTextSize = 50,
                ValueLabelOrientation = Orientation.Horizontal,
                LabelOrientation = Orientation.Horizontal,
                Margin = 50,
            };
        }
        else
        {
            DisplayAlert("Erro", "Não existem ganhos para o periodo selecionado", "OK");
        }

    }
}