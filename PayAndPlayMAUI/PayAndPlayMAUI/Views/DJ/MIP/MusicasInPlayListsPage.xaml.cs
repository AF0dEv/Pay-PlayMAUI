using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;

namespace PayAndPlayMAUI.Views.DJ.MIP;

public partial class MusicasInPlayListsPage : ContentPage
{
	public MusicasInPlayListsService mipService { get; set; }
	public List<MusicaInPlayListModel> mipList { get; set; }

    public MusicasInPlayListsPage()
	{
		InitializeComponent();
		this.mipService = new MusicasInPlayListsService();
		this.mipList = new List<MusicaInPlayListModel>();
    }
    
    
    // Call the base implementation, onAppearing means the page is about to be displayed on the screen and when it does, it will call this method
    protected async override void OnAppearing()
    {
        base.OnAppearing();

        this.mipList = await this.mipService.GetMusicasInPlayLists();

        if (this.mipList != null)
        {
            // Set the ItemsSource of the ListView to the list of MusicaInPlayList, this will make the ListView display the MusicaInPlayList, this.MusicasInPlayList is the name of the ListView in the XAML file
            this.MusicasInPlayList.ItemsSource = this.mipList.ToList();
        }
    }
}