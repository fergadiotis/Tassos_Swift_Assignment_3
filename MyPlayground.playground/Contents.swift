// Superclass
class Ship {
    var name: String
    var countryOfOrigin: String
    let year: String

    
    init(name: String, year: String, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
    
}

// Subclass #1
class CruiseShip: Ship{
    let maxCapacity: Int
    var currentPassengerCount: Int = 1
    var oceanOfOperation: String
    
    
    init(name: String, countryOfOrigin: String, year: String, maxCapacity: Int, oceanOfOperation: String, currentPassengerCount: Int) {
        self.maxCapacity = maxCapacity
        self.currentPassengerCount = currentPassengerCount
        self.oceanOfOperation = oceanOfOperation
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
        
    func addPassenger() -> Int{
        if self.currentPassengerCount < self.maxCapacity{
            currentPassengerCount += 1
        }
            
            return currentPassengerCount
        }
        
    func printPasssengerCount(){
        print("Current Passsengers: \(self.currentPassengerCount)")
        
    }
    
}
  //Subclass #2
class CargoShip: Ship{
    var maxCargoCapacity: Int
    var currentCargoCount: Int
    var isInternational: Bool
    
    init(name: String, countryOfOrigin: String, year: String, maxCargoCapacity: Int, currentCargoCount: Int, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = currentCargoCount
        self.isInternational = isInternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
        
    }
    func addCargo() -> Int{
        if self.currentCargoCount < self.maxCargoCapacity{
            
            self.currentCargoCount += 1
        }
        return currentCargoCount
    }
    func printCurrentCargoCount(){
        print("Current Cargo: \(self.currentCargoCount)")
    }
    
}
    
//Subclass #3
class PirateShip: Ship{
    var maxTreasureCapacity: Int
    var currentTreasureCount: Int
    var numberOfCannons: Int
    
    init(name: String, countryOfOrigin: String, year: String, maxTreasureCapacity: Int, currentTreasureCount: Int, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.currentTreasureCount = currentTreasureCount
        self.numberOfCannons = numberOfCannons
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    func addTreasure() -> Int{
        if self.currentTreasureCount < self.currentTreasureCount{
            self.currentTreasureCount += 1
        }
        return currentTreasureCount
    }
    func printCurrentTreasureCount(){
        print("Current Treasure: \(self.currentTreasureCount)")
    }
}


let TheWave = CruiseShip(name: "TheWave", countryOfOrigin: "Canada", year: "2024", maxCapacity: 200, oceanOfOperation: "Pacific", currentPassengerCount: 199)

print("name:\(TheWave.name)")
print("year: \(TheWave.year)")
print("countryOfOrigin: \(TheWave.countryOfOrigin)")
print("maxCapacity: \(TheWave.maxCapacity)")
print("oceanOfOparetion: \(TheWave.oceanOfOperation)")
print("currentPassengerCount: \(TheWave.currentPassengerCount)")


TheWave.addPassenger()
TheWave.addPassenger()
TheWave.addPassenger()
