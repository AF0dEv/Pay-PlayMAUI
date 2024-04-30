namespace PayAndPlayMAUI.Models
{
    public class MusicaInPlayListModel
    {
        // Properties
        public int ID { get; set; }

        // Foreign Keys
        public int MusicaId { get; set; }
        public int PlayListId { get; set; }

        //// Navigation Properties
        //public virtual Musica? Musica { get; set; }
        //public virtual PlayList? PlayList { get; set; }

        //// Navigation Properties
        //public virtual ICollection<Pedido>? Pedidos { get; set; }
    }
}
