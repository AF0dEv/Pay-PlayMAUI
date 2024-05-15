namespace PayAndPlayMAUI.Models
{
    public class PerfilModel
    {
        // Properties
        public int ID { get; set; }
        public string? Tipo_Perfil { get; set; }

        // Navigation Properties
        public virtual ICollection<DjModel>? DJs { get; set; }
        public virtual ICollection<UtilizadorModel>? Utilizadores { get; set; }
    }
}
