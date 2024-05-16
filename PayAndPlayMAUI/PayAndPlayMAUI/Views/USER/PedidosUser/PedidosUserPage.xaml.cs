using System.Web;
using ZXing.Net.Maui.Controls;

namespace PayAndPlayMAUI.Views.USER.PedidosUser;

public partial class PedidosUserPage : ContentPage
{
    // Flag to check if the user has navigated to another page (so it doesnt navigate 4 times to the same view)
    private bool isNavigated = false;
    public PedidosUserPage()
	{
		InitializeComponent();
	}
    protected override void OnAppearing()
    {
        base.OnAppearing();
        // When View Appears it sets the flag to false
        isNavigated = false;
    }
    private void cameraBarcodeReaderView_BarcodesDetected(object sender, ZXing.Net.Maui.BarcodeDetectionEventArgs e)
    {
        // Check if the Results collection is not empty
        if (e.Results.Any() && !isNavigated)
        {
            // Get the first barcode detected
            var qrCode = e.Results.FirstOrDefault();
            if (qrCode != null)
            {
                // Parse the QR code as a URL
                var uri = new Uri(qrCode.Value);

                // Get the DJ ID from the query parameters
                var DjId = HttpUtility.ParseQueryString(uri.Query).Get("DjId");
                Preferences.Set("DjId_Pedidos", DjId);

                // Navigate to the desired view
                this.Dispatcher.Dispatch(async () =>
                {
                    // Navigate to the route
                    await Shell.Current.GoToAsync(nameof(PlayListsPedidosUserPage));
                    isNavigated = true;
                });
            }
            else
            {
                DisplayAlert("Error", "Não foi Detetado QRCode", "OK");
            }

        }
    }

}