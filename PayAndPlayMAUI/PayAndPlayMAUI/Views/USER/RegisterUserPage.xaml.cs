using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;

namespace PayAndPlayMAUI.Views.USER;

public partial class RegisterUserPage : ContentPage
{
    UtilizadoresService _utilizadorService { get; set; }
    UtilizadorModel? user { get; set; }
    public RegisterUserPage()
	{
		InitializeComponent();
        _utilizadorService = new UtilizadoresService();
	}

    private async Task<bool> ValidateInput()
    {
        if (string.IsNullOrEmpty(txtUserName.Text))
        {
            Vibration.Vibrate();
            lblUserName.IsVisible = true;
            while (lblUserName.IsVisible)
            {
                lblUserName.Text = "Introduza Username !";
                await Task.Delay(2000).ContinueWith(t => lblUserName.IsVisible = false);
            }
            return false;
        }
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
        if (string.IsNullOrEmpty(txtConfirmPassword.Text))
        {
            Vibration.Vibrate();
            lblConfirmPassword.IsVisible = true;
            while (lblConfirmPassword.IsVisible)
            {
                lblConfirmPassword.Text = "Confirme Password !";
                await Task.Delay(2000).ContinueWith(t => lblConfirmPassword.IsVisible = false);
            }
            return false;
        }
        return true;
    }
    private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(LoginUserPage));
    }

    private void ImageButton_Clicked(object sender, EventArgs e)
    {
        txtPassword.IsPassword = !txtPassword.IsPassword;
    }

    private void ImageButton_Clicked_1(object sender, EventArgs e)
    {
        txtConfirmPassword.IsPassword = !txtConfirmPassword.IsPassword;
    }

    private async void txtConfirmPassword_TextChanged(object sender, TextChangedEventArgs e)
    {
        // Wait for the UI to update
        await Task.Delay(100);

        if (txtPassword.Text != txtConfirmPassword.Text)        
        { 
            lblConfirmPassword.IsVisible = true;
            lblConfirmPassword.Text = "Password não coincide !";
            btnRegistar.IsEnabled = false;
        }
        else
        {
            lblConfirmPassword.IsVisible = false;
            btnRegistar.IsEnabled = true;
        }
    }

    private async void btnRegistar_Clicked(object sender, EventArgs e)
    {
        if (await ValidateInput())
        {
            UtilizadorModel? userCriado = null;

            string username = txtUserName.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            this.user = null;
            loadingIndicator.IsRunning = true;
            loadingIndicator.IsVisible = true;

            await Task.Run(async () =>
            {
                user = await this._utilizadorService.GetUtilizadorByEmail(email);
            });

            if (user != null)
            {
                lblEmail.IsVisible = true;

                lblEmail.Text = "Email já existe !";

                loadingIndicator.IsRunning = false;
                loadingIndicator.IsVisible = false;

                txtEmail.Text = string.Empty;

                await Task.Delay(2000);

                lblEmail.IsVisible = false;
            }
            else
            {
                user = new UtilizadorModel
                {
                    UserName = username,
                    Email = email,
                    Password = password,
                    confirmPassword = confirmPassword,
                    PerfilId = 1,
                    Is_Admin = false
                };

                try
                {
                    userCriado = await _utilizadorService.AddUtilizador(user);
                }
                catch (Exception)
                {
                    throw;
                }

                if (userCriado != null)
                {
                    loadingIndicator.IsRunning = false;
                    loadingIndicator.IsVisible = false;

                    txtUserName.Text = string.Empty;
                    txtEmail.Text = string.Empty;
                    txtPassword.Text = string.Empty;
                    txtConfirmPassword.Text = string.Empty;

                    await DisplayAlert("Sucesso", "Utilizador Registado com Sucesso", "OK");

                    await Shell.Current.GoToAsync(nameof(LoginUserPage));
                }
                else
                {
                    loadingIndicator.IsRunning = false;
                    loadingIndicator.IsVisible = false;

                    txtUserName.Text = string.Empty;
                    txtEmail.Text = string.Empty;
                    txtPassword.Text = string.Empty;
                    txtConfirmPassword.Text = string.Empty;

                    await DisplayAlert("Erro", "Erro ao Registar Utilizador", "OK");
                }

            }
        }
    }
}