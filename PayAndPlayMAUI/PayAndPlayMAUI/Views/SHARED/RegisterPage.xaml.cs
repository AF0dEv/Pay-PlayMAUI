using PayAndPlayMAUI.Views.DJ;
using PayAndPlayMAUI.Views.USER;

namespace PayAndPlayMAUI.Views.SHARED;

public partial class RegisterPage : ContentPage
{
	public RegisterPage()
	{
		InitializeComponent();
	}

    private void ImageButton_Clicked(object sender, EventArgs e)
    {
        Shell.Current.GoToAsync($"//{nameof(RegisterDjPage)}");
    }

    private void ImageButton_Clicked_1(object sender, EventArgs e)
    {
        Shell.Current.GoToAsync($"//{nameof(RegisterUserPage)}");
    }
}