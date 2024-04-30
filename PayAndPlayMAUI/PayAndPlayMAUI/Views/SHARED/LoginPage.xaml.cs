using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;

namespace PayAndPlayMAUI.Views.SHARED;

public partial class LoginPage : ContentPage
{
    public DJsService service { get; set; }
    public LoginPage()
    {
        InitializeComponent();
        this.service = new DJsService();
    }

    private async void btnDJs_Clicked(object sender, EventArgs e)
    {
        List<DjModel> djs = await service.GetDJs();

        if (djs != null)
        {
            foreach (DjModel dj in djs.ToList())
            {
                await DisplayAlert("DJ", dj.UserName, "OK");
            }
        }
    }
}