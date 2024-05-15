using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;

namespace PayAndPlayMAUI.Views.DJ.MIP;

public partial class EditMusicasInPlayListsPage : ContentPage
{
	public MusicaInPlayListModel _mipSelecionado { get; set; }
	public MusicasInPlayListsService _mipService { get; set; }
    public PlayListsService _playlistService { get; set; }
    public MusicasService _musicaService { get; set; }
    public EditMusicasInPlayListsPage(MusicaInPlayListModel mip)
	{
		InitializeComponent();
		this._mipService = new MusicasInPlayListsService();
		this._playlistService = new PlayListsService();
        this._musicaService = new MusicasService();
        this._mipSelecionado = mip;
    }
    protected async override void OnAppearing()
    {
        base.OnAppearing();

        List<MusicaModel> musicaList = await this._musicaService.GetMusicas();

        List<PlayListModel> playlistList = await this._playlistService.GetDjPlayLists(Preferences.Get("ID", 0));

        if (musicaList != null && playlistList != null)
        {
            this.pckMusica.ItemsSource = musicaList.ToList();
            this.pckPlayList.ItemsSource = playlistList.ToList();

            this.pckMusica.SelectedItem = musicaList.First(m => m.ID == this._mipSelecionado.MusicaId);
            this.pckPlayList.SelectedItem = playlistList.First(p => p.ID == this._mipSelecionado.PlayListId);
        }
    }

    private async void btnEditar_Clicked(object sender, EventArgs e)
    {
        PlayListModel playlist = (PlayListModel)this.pckPlayList.SelectedItem;
        MusicaModel musica = (MusicaModel)this.pckMusica.SelectedItem;

        this._mipSelecionado.MusicaId = musica.ID;
        this._mipSelecionado.PlayListId = playlist.ID;

        if (musica != null && playlist != null) 
        {
            MusicaInPlayListModel mipCriada = await this._mipService.EditMusicaInPlayList(this._mipSelecionado);
            if (mipCriada != null)
            {
                await DisplayAlert("Sucesso", "Musica in PlayList Editada com Sucesso", "OK");
                await Shell.Current.GoToAsync(nameof(MusicasInPlayListsPage));
            }
            else
            {
                await DisplayAlert("Erro", "Não foi Possivel Editar Musica in PlayList", "OK");
            }
        }
    }
}