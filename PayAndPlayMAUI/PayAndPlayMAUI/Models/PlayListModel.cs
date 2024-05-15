namespace PayAndPlayMAUI.Models
{
    public class PlayListModel
    {
        // Properties
        public int ID { get; set; }
        public string? Nome { get; set; }

        // Foreign Key
        public int DJId { get; set; }

        // Navigation Property
        public virtual DjModel? DJ { get; set; }

        //Navigation Properties
        public virtual ICollection<MusicaInPlayListModel>? MusicasInPlayLists { get; set; }
    }
}
