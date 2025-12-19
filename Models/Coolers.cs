namespace Models
{

    public class Cooler
    {
        public string Id { get; set; }
        public string Mode { get; set; }
        public double SetPointC { get; set; }
        public double CurrentTempC { get; set; }
        public int FanSpeedPercent { get; set; }
        public string OperationalState { get; set; }
        public string LastServiceDate { get; set; }
    }
}