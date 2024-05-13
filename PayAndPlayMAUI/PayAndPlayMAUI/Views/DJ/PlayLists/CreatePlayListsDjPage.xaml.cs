using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;

namespace PayAndPlayMAUI.Views.DJ.PlayLists;

public partial class CreatePlayListsPage : ContentPage
{
    PlayListsService _playListsService { get; set; }
    public CreatePlayListsPage()
	{
		InitializeComponent();
	    this._playListsService = new PlayListsService();
    }
    private async Task<bool> ValidateInput()
    {
        if (string.IsNullOrEmpty(txtNome.Text))
        {
            lblErro.IsVisible = true;
            lblErro.Text = "Nome da PlayList é obrigatório";
            await Task.Delay(3000);
            lblErro.IsVisible = false;
            return false;
        }
        else
        {
            return true;
        }
    }
    private async void btnCriar_Clicked(object sender, EventArgs e)
    {
        if (await ValidateInput())
        {
            PlayListModel playList = new PlayListModel();
            playList.Nome = txtNome.Text;
            playList.DJId = Preferences.Get("ID", 0);
            try
            {
                PlayListModel plCriada = await this._playListsService.AddPlayList(playList);
                if (plCriada != null)
                {
                    await DisplayAlert("Sucesso", "PlayList Criada com Sucesso", "OK");
                    await Shell.Current.GoToAsync(nameof(PlayListsDjPage));
                }
            }
            catch (Exception)
            {
                await DisplayAlert("Erro", "Não Foi Possivel Criar PlayList", "OK");
            }
        }
    }
}