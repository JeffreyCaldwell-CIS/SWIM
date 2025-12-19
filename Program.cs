// Temporary test harness for StateEvaluator.
// Other logic removed intentionally.


using System;
using System.IO;
using System.Text.Json;
using Models;

class Program
{
    static void Main(string[] args)
    {
        var evaluator = new StateEvaluator();

        var snapshot = new SensorSnapshot(
        TemperatureF: 165,
        RateOfChangeFPerMin: 3.2,
        Timestamp: DateTime.Now
        );

        var currentState = SystemState.Normal;
        var nextState = evaluator.Evaluate(currentState, snapshot);

        Console.WriteLine($"State changed from {currentState} to {nextState}");

        /*Console.WriteLine("=== WIMS INITIALIZING ===");

        // Load Servers
        string serverJsonPath = Path.Combine("Data", "servers.json");
        string serverJson = File.ReadAllText(serverJsonPath);

        ServerContainer serverContainer = JsonSerializer.Deserialize<ServerContainer>(serverJson);
        
        Console.WriteLine($"Loaded {serverContainer.Servers.Count} servers.");

        // Load Coolers
        string coolerJsonPath = Path.Combine("Data", "coolers.json");
        string coolerJson = File.ReadAllText(coolerJsonPath);

        CoolerContainer coolerContainer = JsonSerializer.Deserialize<CoolerContainer>(coolerJson);

        Console.WriteLine($"Loaded {coolerContainer.Coolers.Count} coolers.");

        Console.WriteLine("\n=== SYSTEM STATUS SUMMARY ===");
        
        foreach (var server in serverContainer.Servers)
        {
            Console.WriteLine($"{server.Name} | Temp: {server.TemperatureC}C | CPU: {server.CpuLoadPercent}% | Status: {server.Status}");
        }

        Console.WriteLine("\nCooling Units:");
        foreach (var cooler in coolerContainer.Coolers)
        {
            Console.WriteLine($"{cooler.Id} | Mode: {cooler.Mode} | Current Temp: {cooler.CurrentTempC}C | State: {cooler.OperationalState}");
        }

        Console.WriteLine("\n=== WIMS INITIALIZATION COMPLETE ===");*/
    }

        
}

