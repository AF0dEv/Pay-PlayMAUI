using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;

namespace PayAndPlayMAUI.Views.DJ.PlayLists;

public partial class EditPlayListsPage : ContentPage
{
	public PlayListsService _playListsService { get; set; }
    public PlayListModel _playListSelecionada { get; set; }
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
    public EditPlayListsPage(PlayListModel pl)
    {
        InitializeComponent();
        this._playListsService = new PlayListsService();

        this._playListSelecionada = pl;
    }
    protected override void OnAppearing()
    {
        base.OnAppearing();
        txtNome.Text = this._playListSelecionada.Nome;
    }
    private async void btnEditar_Clicked(object sender, EventArgs e)
    {
        if (await ValidateInput())
        {
            this._playListSelecionada.Nome = txtNome.Text;
            this._playListSelecionada.DJId = Preferences.Get("ID", 0);
            PlayListModel plEditada = await this._playListsService.EditPlayList(this._playListSelecionada);

            try
            {
                await DisplayAlert("Sucesso", "PlayList Editada com Sucesso", "OK");
                await Shell.Current.GoToAsync(nameof(PlayListsDjPage));
            }
            catch (Exception)
            {
                await DisplayAlert("Erro", "Não Foi Possivel Criar PlayList", "OK");
            }

        }

    }
}