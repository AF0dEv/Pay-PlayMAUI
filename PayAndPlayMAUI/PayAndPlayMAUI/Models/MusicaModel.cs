namespace PayAndPlayMAUI.Models
{
    public class MusicaModel
    {
        // Properties
        public int ID { get; set; }
        public string? Nome { get; set; }
        public string? Artista { get; set; }
        public int? Duracao { get; set; }
        public decimal Custo { get; set; }

        // Navigation Properties
        public virtual ICollection<MusicaInPlayListModel>? MusicasInPlayLists { get; set; }
    }
}
