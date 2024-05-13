using Microcharts;
using Microsoft.CodeAnalysis.Editing;
using PayAndPlayMAUI.Services;
using PayAndPlayMAUI.Views.USER.PedidosUser;
using SkiaSharp;

namespace PayAndPlayMAUI.Views.USER;

public partial class ProfileUserPage : ContentPage
{
    ListagensService _listService { get; set; }
    public ProfileUserPage()
	{
        this._listService = new ListagensService();
        InitializeComponent();
	}
    protected override void OnAppearing()
    {
        base.OnAppearing();

        string UserName = Preferences.Get("UserName", "");

        lblProfile.Text = UserName.ToString();
    }

    private async void btnMostrarGanhos_Clicked(object sender, EventArgs e)
    {
        int dataInicio = dpMesInicio.Date.Month;
        int dataFinal = dpMesFinal.Date.Month;

        int userId = Preferences.Get("ID", 0);

        Dictionary<string, decimal> gastosPeriodo = await _listService.ListarGastosPeriodo(dataInicio, dataFinal, userId);

        if (gastosPeriodo.Count > 0)
        {
            List<ChartEntry> entries = gastosPeriodo.Select(g =>
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
            await DisplayAlert("Erro", "Não existem gastos para o periodo selecionado", "OK");
        }
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
        if (rbtPeriodo.IsChecked)
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
        
        int userId = Preferences.Get("ID", 0);

        Dictionary<string, decimal> gastos = await _listService.ListarGastosMesPorDj(month, userId);

        if (gastos.Count > 0)
        {
            List<ChartEntry> entries = gastos.Select(g =>
            new ChartEntry((float)g.Value)
            {
                ValueLabelColor = SKColor.Parse("#38BD2F"),
                Label = g.Key,
                ValueLabel = g.Value.ToString(),
                Color = SKColor.Parse("#38BD2F"),
            }).ToList();

            ChartMes.Chart = new BarChart
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
            await DisplayAlert("Erro", "Não Existe Gastos no Mês Selecionado", "OK");
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
}