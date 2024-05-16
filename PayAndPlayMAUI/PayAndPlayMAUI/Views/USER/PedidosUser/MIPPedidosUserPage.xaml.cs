using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;
using System.Collections.ObjectModel;
using System.Windows.Input;

namespace PayAndPlayMAUI.Views.USER.PedidosUser;

public partial class MIPPedidosUserPage : ContentPage
{
    public ObservableCollection<MusicaInPlayListModel> MipList { get; set; }
    public MusicasInPlayListsService _mipService { get; set; }
    public ICommand SelecionarMipCommand { get; set; }
    public MIPPedidosUserPage()
	{
		InitializeComponent();

        this._mipService = new MusicasInPlayListsService();

        this.MipCV.BindingContext = this;

        this.SelecionarMipCommand = new Command<MusicaInPlayListModel>(SelecionarMip);
    }
    protected override async void OnAppearing()
    {
        base.OnAppearing();

        int playListId = Preferences.Get("PlayListId", 0);
        string UserName = Preferences.Get("UserName", "");

        lblProfile.Text = UserName.ToString();

        this.loadingIndicator.IsRunning = true;
        this.loadingIndicator.IsVisible = true;

        this.MipList = new ObservableCollection<MusicaInPlayListModel>(await this._mipService.GetMusicaInPlayListByPlayList(playListId));

        if (this.MipList.Count > 0)
        {
            this.MipCV.ItemsSource = this.MipList.ToList();
            this.loadingIndicator.IsRunning = false;
            this.loadingIndicator.IsVisible = false;
        }
        else
        {
            await DisplayAlert("Erro", "Este DJ Não tem PlayLists Associadas!", "OK");
            this.loadingIndicator.IsRunning = false;
            this.loadingIndicator.IsVisible = false;
            await Shell.Current.GoToAsync(nameof(PedidosUserPage));
        }
    }

    private async void btnHomeIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(ProfileUserPage));
    }

    private async void btnUserMusicIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(PedidosUserPage));
    }

    private async void SelecionarMip(MusicaInPlayListModel mip)
    {
        Preferences.Set("MipId", mip.ID);
        await Shell.Current.GoToAsync(nameof(PagamentoUserPage));
    }
}