namespace PayAndPlayMAUI.Views.DJ;

using PayAndPlayMAUI.Models;
using PayAndPlayMAUI.Services;
using PayAndPlayMAUI.Views.DJ.MIP;
using PayAndPlayMAUI.Views.DJ.Musicas;
using PayAndPlayMAUI.Views.DJ.PlayLists;
using PayAndPlayMAUI.Views.USER.PedidosUser;
using QRCoder;
using System.Drawing;
using System.IO;

public partial class QRCodePage : ContentPage
{
    public PedidosService _pedidosService { get; set; }
    public ListagensService _listService { get; set; }
    public QRCodePage()
	{
		InitializeComponent();
        this._pedidosService = new PedidosService();
        this._listService = new ListagensService();
    }
    protected async override void OnAppearing()
    {
        base.OnAppearing();

        int DjId = Preferences.Get("ID", 0);
        string UserName = Preferences.Get("UserName", "");


        lblProfile.Text = UserName.ToString();

        decimal saldo = await this._listService.CalculoSaldoDJ(DjId);
        lblSaldo.Text = saldo.ToString() + "$";

        string folderPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "QrCodes");
        string imageName = Preferences.Get("UserName", "") + ".png";
        string filePath = Path.Combine(folderPath, imageName);

        ImageSource qrCodeImageSource;

        if (File.Exists(filePath))
        {
            // If the image file already exists, use it
            qrCodeImageSource = ImageSource.FromFile(filePath);
        }
        else
        {
            // If the image file doesn't exist, generate a new QR code
            qrCodeImageSource = QRCode();
        }

        this.imgQRCode.Source = qrCodeImageSource;
        lblQrDJ.Text = "QR Code para " + Preferences.Get("UserName", "");
    }

    public ImageSource QRCode()
	{
        try
        {
            int DjId = Preferences.Get("ID", 0);
            string redirectUrl = $"payandplay://{nameof(PlayListsPedidosUserPage)}?DjId={DjId}";

            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeData qrCodeData = qrGenerator.CreateQrCode(redirectUrl, QRCodeGenerator.ECCLevel.Q);
            PngByteQRCode qrCode = new PngByteQRCode(qrCodeData);

            byte[] qrCodeBytes = qrCode.GetGraphic(200);

            string folderPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "QrCodes");
            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }

            string imageName = Preferences.Get("UserName", "") + ".png";
            string filePath = Path.Combine(folderPath, imageName);

            File.WriteAllBytes(filePath, qrCodeBytes);

            ImageSource imgSource = ImageSource.FromFile(filePath);

            return imgSource;
        }
        catch (Exception)
        {
            return null;
        }
    }

    private async void btnLevantar_Clicked(object sender, EventArgs e)
    {
        string saldoFormatado = lblSaldo.Text.Replace("$", string.Empty);
        decimal saldo = Convert.ToDecimal(saldoFormatado);
        int DjId = Preferences.Get("ID", 0);

        if (saldo > 0)
        {
            PedidosService _pedidoService = new PedidosService();
            PedidoModel pedido = new PedidoModel
            {
                DJId = Preferences.Get("ID", 0),
                UtilizadorId = 1,
                MusicaInPlayListId = 3,
                Custo_Pedido = 0 - saldo,
                Data = DateOnly.FromDateTime(DateTime.Now),
                Estado = "LEVANTAMENTO",
            };
            PedidoModel? pedidoCriado = new PedidoModel();

            await Task.Run(async () =>
            {
                pedidoCriado = await _pedidoService.LevantarSaldo(pedido);
            });

            if (pedidoCriado != null)
            {
                decimal saldoNovo = await _listService.CalculoSaldoDJ(DjId);
                lblSaldo.Text = saldoNovo.ToString() + "$";
                await DisplayAlert("Sucesso", "Levantamento Efetuado Com Sucesso", "OK");
            }
            else
            {
                await DisplayAlert("Erro", "Levantamento Não Efetuado", "OK");
            }

        }
        else
        {
            await DisplayAlert("Erro", "Não tem Saldo Suficiente para Levantar", "Ok");
        }
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
}