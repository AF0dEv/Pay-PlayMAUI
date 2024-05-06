using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;

namespace PayAndPlayMAUI.Views.DJ;

public partial class RegisterDjPage : ContentPage
{
    DJsService _djService { get; set; }
    DjModel dj { get; set; }
    public RegisterDjPage()
	{
		InitializeComponent();
        _djService = new DJsService();
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
                await Task.Delay(2000); // Delay 2s
                lblUserName.IsVisible = false;
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
        if (string.IsNullOrEmpty(txtConfirmPassword.Text))
        {
            Vibration.Vibrate();
            lblConfirmPassword.IsVisible = true;
            while (lblConfirmPassword.IsVisible)
            {
                lblConfirmPassword.Text = "Confirme Password !";
                await Task.Delay(2000); // Delay 2s
                lblConfirmPassword.IsVisible = false;
            }
            return false;
        }
        return true;
    }
    private void ImageButton_Clicked(object sender, EventArgs e)
    {
        txtPassword.IsPassword = !txtPassword.IsPassword;
    }

    private void ImageButton_Clicked_1(object sender, EventArgs e)
    {
        txtConfirmPassword.IsPassword = !txtConfirmPassword.IsPassword;
    }

    private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(LoginDjPage));
    }

    private async void btnRegistar_Clicked(object sender, EventArgs e)
    {
        if (await ValidateInput())
        {
            DjModel? djCriado = null;
            
            string username = txtUserName.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            this.dj = null;
            loadingIndicator.IsRunning = true;
            loadingIndicator.IsVisible = true;

            await Task.Run(async () =>
            {
                dj = await this._djService.GetDJByEmail(email);
            });

            if (dj != null)
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
                dj = new DjModel
                {
                    UserName = username,
                    Email = email,
                    Password = password,
                    confirmPassword = confirmPassword,
                    PerfilId = 2,
                };

                try
                {
                    djCriado = await _djService.AddDJ(dj);
                }
                catch (Exception)
                {
                    throw;
                }

                if (djCriado != null)
                {
                    loadingIndicator.IsRunning = false;
                    loadingIndicator.IsVisible = false;

                    txtUserName.Text = string.Empty;
                    txtEmail.Text = string.Empty;
                    txtPassword.Text = string.Empty;
                    txtConfirmPassword.Text = string.Empty;

                    await DisplayAlert("Sucesso", "DJ Registado com Sucesso", "OK");

                    await Shell.Current.GoToAsync(nameof(LoginDjPage));
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
}