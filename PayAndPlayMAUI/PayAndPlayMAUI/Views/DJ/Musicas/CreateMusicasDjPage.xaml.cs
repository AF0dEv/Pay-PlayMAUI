using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;

namespace PayAndPlayMAUI.Views.DJ.Musicas;

public partial class CreateMusicasDjPage : ContentPage
{
	public MusicasService _musicasService { get; set; }
    public CreateMusicasDjPage()
	{
		InitializeComponent();
        this._musicasService = new MusicasService();
    }
    private async Task<bool> ValidateInput()
    {
        if (string.IsNullOrEmpty(txtNome.Text))
        {
            lblErroNome.IsVisible = true;
            lblErroNome.Text = "Nome da Musica é obrigatório";
            await Task.Delay(3000);
            lblErroNome.IsVisible = false;
            return false;
        }
        if (string.IsNullOrEmpty(txtArtista.Text))
        {
            lblErroArtista.IsVisible = true;
            lblErroArtista.Text = "Artista da Musica é obrigatório";
            await Task.Delay(3000);
            lblErroArtista.IsVisible = false;
            return false;
        }
        if (string.IsNullOrEmpty(txtDuracao.Text))
        {
            lblErroDuracao.IsVisible = true;
            lblErroDuracao.Text = "Duração da Musica é obrigatório";
            await Task.Delay(3000);
            lblErroDuracao.IsVisible = false;
            return false;
        }
        if (string.IsNullOrEmpty(txtCusto.Text))
        {
            lblErroCusto.IsVisible = true;
            lblErroCusto.Text = "Duração da Musica é obrigatório";
            await Task.Delay(3000);
            lblErroCusto.IsVisible = false;
            return false;
        }
        return true;
    }

    private async void btnCriar_Clicked(object sender, EventArgs e)
    {
        if (await ValidateInput())
        {
            MusicaModel musica = new MusicaModel();
            musica.Nome = txtNome.Text;
            musica.Artista = txtArtista.Text;
            try
            {
                musica.Duracao = int.Parse(txtDuracao.Text);
                musica.Custo = decimal.Parse(txtCusto.Text);
            }
            catch (Exception)
            {
                await DisplayAlert("Erro", "Erro ao converter valores", "OK");
            }
            try
            {
                MusicaModel musicaCriada = await this._musicasService.AddMusica(musica);
                if (musicaCriada != null)
                {
                    await DisplayAlert("Sucesso", "Musica Criada com Sucesso", "OK");
                    await Shell.Current.GoToAsync(nameof(MusicasDjPage));
                }
            }
            catch (Exception)
            {
                await DisplayAlert("Erro", "Não Foi Possivel Criar Musica", "OK");
            }

        }
    }
}