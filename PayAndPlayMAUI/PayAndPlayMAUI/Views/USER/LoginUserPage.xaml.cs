using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;

namespace PayAndPlayMAUI.Views.USER;

public partial class LoginUserPage : ContentPage
{
    UtilizadoresService _utilizadorService { get; set; }
    public LoginUserPage()
    {
        InitializeComponent();
        _utilizadorService = new UtilizadoresService();
    }

    private async Task<bool> ValidateInput()
    {
        if (string.IsNullOrEmpty(txtEmail.Text))
        {
            
            Vibration.Vibrate();
            lblEmail.IsVisible = true;
            while (lblEmail.IsVisible)
            {
                lblEmail.Text = "Introduza Email !";
                await Task.Delay(2000).ContinueWith(t => lblEmail.IsVisible = false);
            }
            return false;
        }
        if (string.IsNullOrEmpty(txtPassword.Text))
        {
            Vibration.Vibrate();
            lblPassword.IsVisible = true;
            while (lblPassword.IsVisible)
            {
                lblPassword.Text = "Introduza Password !";
                await Task.Delay(2000).ContinueWith(t => lblPassword.IsVisible = false);
            }
            return false;
        }
        return true;
    }

    private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(RegisterUserPage));
    }

    private async void Button_Clicked(object sender, EventArgs e)
    {
        if (await ValidateInput())
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            UtilizadorModel user = null;
            loadingIndicator.IsRunning = true;
            loadingIndicator.IsVisible = true;
            await Task.Run(async () =>
            {
                user = await this._utilizadorService.GetUtilizadorByEmail(email);
            });

            if (user != null && user.Email == email && user.Password == password && user.confirmPassword == password)
            {
                loadingIndicator.IsRunning = false;
                loadingIndicator.IsVisible = false;
                txtEmail.Text = string.Empty;
                txtPassword.Text = string.Empty;

                // Guardar o Utilizador na sessao
                Preferences.Set("ID", user.ID);
                Preferences.Set("UserName", user.UserName);
                Preferences.Set("PerfilId", user.PerfilId);

                
                await Shell.Current.GoToAsync(nameof(ProfileUserPage));
            }
            else
            {
                txtPassword.Text = string.Empty;
                await DisplayAlert("Erro", "Credenciais Erradas ou nao Existentes", "OK");
                loadingIndicator.IsRunning = false;
                loadingIndicator.IsVisible = false;
            }
        }
    }

    private void ImageButton_Clicked(object sender, EventArgs e)
    {
        txtPassword.IsPassword = !txtPassword.IsPassword;
    }
}
