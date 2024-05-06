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
        var nextPage = new RegisterDjPage();
        Navigation.PushModalAsync(nextPage);
    }

    private void ImageButton_Clicked_1(object sender, EventArgs e)
    {
        var nextPage = new RegisterUserPage();
        Navigation.PushModalAsync(nextPage);
    }
}