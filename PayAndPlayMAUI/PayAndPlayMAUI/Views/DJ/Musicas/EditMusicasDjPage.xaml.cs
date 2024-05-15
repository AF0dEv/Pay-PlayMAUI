using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;

namespace PayAndPlayMAUI.Views.DJ.Musicas;

public partial class EditMusicasDjPage : ContentPage
{
	public MusicasService _musicasService { get; set; }
	public MusicaModel _musicaSelecionada { get; set; }
    public EditMusicasDjPage(MusicaModel musica)
	{
		InitializeComponent();
		this._musicasService = new MusicasService();
        this._musicaSelecionada = musica;
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
    protected override void OnAppearing()
    {
        base.OnAppearing();
        
        txtNome.Text = this._musicaSelecionada.Nome;
        txtArtista.Text = this._musicaSelecionada.Artista;
        txtDuracao.Text = this._musicaSelecionada.Duracao.ToString();
        txtCusto.Text = this._musicaSelecionada.Custo.ToString();

    }
    private async void btnEditar_Clicked(object sender, EventArgs e)
    {
        if (await ValidateInput())
        {
            this._musicaSelecionada.Nome = txtNome.Text;
            this._musicaSelecionada.Artista = txtArtista.Text;
            try
            {
                this._musicaSelecionada.Duracao = int.Parse(txtDuracao.Text);
                this._musicaSelecionada.Custo = decimal.Parse(txtCusto.Text);
            }
            catch (Exception)
            {
                await DisplayAlert("Erro", "Erro ao converter valores", "OK");
            }

            MusicaModel musicaEditada = await this._musicasService.EditMusica(this._musicaSelecionada);
            if (musicaEditada != null)
            {
                await DisplayAlert("Sucesso", "Musica Editada com Sucesso", "OK");
                await Shell.Current.GoToAsync(nameof(MusicasDjPage));
            }
            else
            {
                await DisplayAlert("Erro", "Não foi possivel Editar Musica", "OK");
            }

        }
    }
}