using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;
using System.Collections.ObjectModel;
using System.Windows.Input;

namespace PayAndPlayMAUI.Views.USER.PedidosUser;

public partial class PlayListsPedidosUserPage : ContentPage
{
    public PlayListsService _playListsService { get; set; }
    public ObservableCollection<PlayListModel> PlayListList { get; set; }
    public ICommand SelecionarPlayListCommand { get; set; }
    public PlayListsPedidosUserPage()
	{
		InitializeComponent();

        this._playListsService = new PlayListsService();

        this.PlayListCV.BindingContext = this;

        this.SelecionarPlayListCommand = new Command<PlayListModel>(SelecionarPlayList);

    }
    protected override async void OnAppearing()
    {
        base.OnAppearing();

        int DjId = int.Parse(Preferences.Get("DjId_Pedidos", ""));
        string UserName = Preferences.Get("UserName", "");

        lblProfile.Text = UserName.ToString();

        this.loadingIndicator.IsRunning = true;
        this.loadingIndicator.IsVisible = true;

        this.PlayListList = new ObservableCollection<PlayListModel>(await this._playListsService.GetDjPlayLists(DjId));

        if (this.PlayListList.Count > 0)
        {
            this.PlayListCV.ItemsSource = this.PlayListList.ToList();
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
    private async void SelecionarPlayList(PlayListModel playList)
    {
        Preferences.Set("PlayListId", playList.ID);
        await Shell.Current.GoToAsync(nameof(MIPPedidosUserPage));
    }

}