namespace PayAndPlayMAUI.Models
{
    public class UtilizadorModel
    {
        // Properties
        public int ID { get; set; }
        public string? Email { get; set; }
        public string? UserName { get; set; }
        public string? Password { get; set; }
        public string? confirmPassword { get; set; }
        public bool Is_Admin { get; set; }

        // Foreign Key
        public int PerfilId { get; set; }

        //// Navigation Property
        //public virtual Perfil? Perfil { get; set; }

        //// Navigation Properties
        //public virtual ICollection<Pedido>? Pedidos { get; set; }
    }
}
