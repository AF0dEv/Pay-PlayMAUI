using PayAndPlayMAUI.Views.DJ;
using PayAndPlayMAUI.Views.USER;
using System.Reflection;

namespace PayAndPlayMAUI.Views.SHARED;

public partial class LoginPage : ContentPage
{
    public LoginPage()
    {
        InitializeComponent();
    }


    private async void ImageButton_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(LoginDjPage));
    }

    private async void ImageButton_Clicked_1(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(LoginUserPage));
    }
}