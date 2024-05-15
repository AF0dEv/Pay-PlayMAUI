using PayAndPlayMAUI.Views.DJ;
using PayAndPlayMAUI.Views.DJ.MIP;
using PayAndPlayMAUI.Views.DJ.Musicas;
using PayAndPlayMAUI.Views.DJ.PlayLists;
using PayAndPlayMAUI.Views.SHARED;
using PayAndPlayMAUI.Views.USER;
using PayAndPlayMAUI.Views.USER.PedidosUser;

namespace PayAndPlayMAUI
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();

            // Register routes

            // Shared
            Routing.RegisterRoute(nameof(LoginPage), typeof(LoginPage));
            Routing.RegisterRoute(nameof(RegisterPage), typeof(RegisterPage));


            // User
            Routing.RegisterRoute(nameof(ProfileUserPage), typeof(ProfileUserPage));
            Routing.RegisterRoute(nameof(LoginUserPage), typeof(LoginUserPage));
            Routing.RegisterRoute(nameof(RegisterUserPage), typeof(RegisterUserPage));
            // User.PedidosUser
            Routing.RegisterRoute(nameof(PedidosUserPage), typeof(PedidosUserPage));
            Routing.RegisterRoute(nameof(MIPPedidosUserPage), typeof(MIPPedidosUserPage));
            Routing.RegisterRoute(nameof(PlayListsPedidosUserPage), typeof(PlayListsPedidosUserPage));
            Routing.RegisterRoute(nameof(PagamentoUserPage), typeof(PagamentoUserPage));


            // DJ
            Routing.RegisterRoute(nameof(ProfileDjPage), typeof(ProfileDjPage));
            Routing.RegisterRoute(nameof(LoginDjPage), typeof(LoginDjPage));
            Routing.RegisterRoute(nameof(RegisterDjPage), typeof(RegisterDjPage));
            Routing.RegisterRoute(nameof(PedidosDjPage), typeof(PedidosDjPage));
            Routing.RegisterRoute(nameof(QRCodePage), typeof(QRCodePage));
            // DJ.MIP
            Routing.RegisterRoute(nameof(MusicasInPlayListsPage), typeof(MusicasInPlayListsPage));
            Routing.RegisterRoute(nameof(CreateMusicasInPlayListsPage), typeof(CreateMusicasInPlayListsPage));
            Routing.RegisterRoute(nameof(EditMusicasInPlayListsPage), typeof(EditMusicasInPlayListsPage));
            // DJ.Musicas
            Routing.RegisterRoute(nameof(MusicasDjPage), typeof(MusicasDjPage));
            Routing.RegisterRoute(nameof(CreateMusicasDjPage), typeof(CreateMusicasDjPage));
            Routing.RegisterRoute(nameof(EditMusicasDjPage), typeof(EditMusicasDjPage));
            // DJ.PlayLists
            Routing.RegisterRoute(nameof(PlayListsDjPage), typeof(PlayListsDjPage));
            Routing.RegisterRoute(nameof(CreatePlayListsPage), typeof(CreatePlayListsPage));
            Routing.RegisterRoute(nameof(EditPlayListsPage), typeof(EditPlayListsPage));
        }
    }
}
