namespace PayAndPlayMAUI.Models
{
    public class MusicaInPlayListModel
    {
        // Properties
        public int ID { get; set; }

        // Foreign Keys
        public int MusicaId { get; set; }
        public int PlayListId { get; set; }

        // Navigation Properties
        public virtual MusicaModel? Musica { get; set; }
        public virtual PlayListModel? PlayList { get; set; }

        // Navigation Properties
        public virtual ICollection<PedidoModel>? Pedidos { get; set; }
    }
}
