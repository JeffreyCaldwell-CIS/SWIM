
namespace Models
{
    public class Server
    {
        public string Name { get; set; }
        public string Rack { get; set; }
        public int UPosition { get; set; }
        public double CpuLoadPercent { get; set; }
        public int MemoryUsedGB { get; set; }
        public int MemoryTotalGB { get; set; }
        public double StorageUsedTB { get; set; }
        public double StorageTotalTB { get; set; }
        public double TemperatureC { get; set; }
        public string Status { get; set; }
    }
}