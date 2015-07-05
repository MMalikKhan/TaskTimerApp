namespace TaskTimer.Models
{
    public class Transaction
    {
        public string ClientId { get; set; }
        public string RequestedBy { get; set; }
        public string RequestedByWindowsAccount { get; set; }
        public string LocationCode { get; set; }
        public string TransactionNotes { get; set; }
        public string TeamMemberComments { get; set; }
        public string ConsumedAtDate { get; set; }
        public string UOM { get; set; }
        public int DurationHours { get; set; }
        public int DurationMinutes { get; set; }
        public int DurationSeconds { get; set; }
        public double UnitPrice { get; set; }
        public string UsageItemId { get; set; }
    }
}