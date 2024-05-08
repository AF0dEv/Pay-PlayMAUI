using PayAndPlayMAUI.Views.DJ.MIP;
using PayAndPlayMAUI.Views.DJ.Musicas;
using PayAndPlayMAUI.Views.DJ.PlayLists;

namespace PayAndPlayMAUI.Views.DJ;

public partial class ProfileDjPage : ContentPage
{
	public ProfileDjPage()
	{
		InitializeComponent();
	}

    private async void btnMoneyIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(PedidosDjPage));
    }

    private async void btnMipIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(MusicasInPlayListsPage));
    }

    private async void btnHomeIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(ProfileDjPage));
    }

    private async void btnPlaylistIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(PlayListsDjPage));
    }

    private async void btnMusicIcon_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(MusicasDjPage));
    }

    private void rbtMes_CheckedChanged(object sender, CheckedChangedEventArgs e)
    {

    }

    private void dpMes_DateSelected(object sender, DateChangedEventArgs e)
    {

    }

    private void dpMesInicio_DateSelected(object sender, DateChangedEventArgs e)
    {

    }

    private void dpMesFinal_DateSelected(object sender, DateChangedEventArgs e)
    {

    }

    private void rbtPeriodo_CheckedChanged(object sender, CheckedChangedEventArgs e)
    {

    }
}