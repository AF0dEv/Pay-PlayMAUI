using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;

namespace PayAndPlayMAUI.Views.DJ.MIP;

public partial class CreateMusicasInPlayListsPage : ContentPage
{
    public MusicasInPlayListsService _mipService { get; set; }
    public MusicasService _musicaService { get; set; }
    public PlayListsService _playlistService { get; set; }
    public CreateMusicasInPlayListsPage()
	{
		InitializeComponent();
        this._mipService = new MusicasInPlayListsService();
        this._musicaService = new MusicasService();
        this._playlistService = new PlayListsService();
    }
    protected override async void OnAppearing()
    {
        base.OnAppearing();

        List<MusicaModel> musicList = await this._musicaService.GetMusicas();
        List<PlayListModel> playlistList = await this._playlistService.GetDjPlayLists(Preferences.Get("ID", 0));

        if (musicList != null && playlistList != null)
        {
            this.pckMusica.ItemsSource = musicList.ToList();
            this.pckPlayList.ItemsSource = playlistList.ToList();
        }

    }

    private async void btnCriar_Clicked(object sender, EventArgs e)
    {
        MusicaModel musicaSelecionada = (MusicaModel)this.pckMusica.SelectedItem;
        PlayListModel playlistSelecionada = (PlayListModel)this.pckPlayList.SelectedItem;

        MusicaInPlayListModel mip = new MusicaInPlayListModel();
        mip.MusicaId = musicaSelecionada.ID;
        mip.PlayListId = playlistSelecionada.ID;
        try
        {
            MusicaInPlayListModel mipCriada = await this._mipService.AddMusicaInPlayList(mip);
            if (mipCriada != null)
            {
                await DisplayAlert("Sucesso", "Musica in PlayList Criada com Sucesso", "OK");
                await Shell.Current.GoToAsync(nameof(MusicasInPlayListsPage));
            }
        }
        catch (Exception)
        {
            await DisplayAlert("Erro", "Não Foi Possivel Criar Musica in PlayList", "OK");
        }


    }
}