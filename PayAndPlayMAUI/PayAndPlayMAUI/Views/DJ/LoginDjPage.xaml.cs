using Newtonsoft.Json;
using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;
using System.Collections.Generic;

namespace PayAndPlayMAUI.Views.DJ;

public partial class LoginDjPage : ContentPage
{
    DJsService _djService { get; set; } 
    public LoginDjPage()
	{
		InitializeComponent();
        _djService = new DJsService();
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
                await Task.Delay(2000); // Delay 2s
                lblEmail.IsVisible = false;
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
                await Task.Delay(2000); // Delay 2s
                lblPassword.IsVisible = false;
            }
            return false;
        }
        return true;
    }

    private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(RegisterDjPage));
    }

    private async void btnLogin_Clicked_1(object sender, EventArgs e)
    {
        if (await ValidateInput())
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            DjModel dj = null;
            loadingIndicator.IsRunning = true;
            loadingIndicator.IsVisible = true;
            await Task.Run(async () =>
            {
                dj = await this._djService.GetDJByEmail(email);
            });

            if (dj != null && dj.Email == email && dj.Password == password && dj.confirmPassword == password)
            {
                loadingIndicator.IsRunning = false;
                loadingIndicator.IsVisible = false;
                txtEmail.Text = string.Empty;
                txtPassword.Text = string.Empty;

                // Guardar o DJ na sessao
                Preferences.Set("ID", dj.ID);
                Preferences.Set("UserName", dj.UserName);
                Preferences.Set("PerfilId", dj.PerfilId);

                await Shell.Current.GoToAsync(nameof(ProfileDjPage));
            }
            else
            {
                txtPassword.Text = string.Empty;
                DisplayAlert("Erro", "Credenciais Erradas ou nao Existentes", "OK");
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