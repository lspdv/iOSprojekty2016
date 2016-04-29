//: Playground - noun: a place where people can play

import UIKit

/* list of car types*/
enum Cars {
    case sport
    case SUV
    case buggati
}

public class Car {
    var carType: Cars
    var gasConsuption: Float
    var vinNumber: String
    var hasConditioning: Bool
    var engineOn: Bool = false
    
    init(carType: Cars, vinNumber: String, gasConsuption: Float, hasConditioning: Bool) {
        self.carType = carType
        self.gasConsuption = gasConsuption
        self.vinNumber = vinNumber
        self.hasConditioning = hasConditioning
    }
    
    func engineStart()-> Bool {
        engineOn = true
        return engineOn
    }
    
    func engineStop()-> Bool {
        engineOn = false
        return engineOn
    }
    func changeEngineState() -> Bool {
        if engineOn {
            return engineStop()
        }
        else {
            return engineStart()
        }
    }
    
    func getConsuptionForKilometres(km : Float) -> Float {
        if km >= 0 {
            return (km * gasConsuption) / 100
        }
        else {
            return 0.0
        }
    }
}

public class CarCollection {
    var carsInGarage : [Car] = []
    
    
    func showOff(cars : [Car]) -> [Car] {
        for car in cars {
            if car.carType == .buggati {
            print ("To vejráš jaký mám fáro co?!", car.carType, car.carType, car.vinNumber, car.gasConsuption)
            }
            else {
                print (car.carType, car.vinNumber, car.hasConditioning, car.gasConsuption )
            }
            
            
        }
    }
    
    func addCarsInGarage(car: Car) -> [Car] {
        carsInGarage.append(car)
        return carsInGarage
        
    }
}

var AstonMartin = Car(carType: .sport, vinNumber: "0UCHYLA", gasConsuption: 200, hasConditioning: true)
var RangeRover = Car(carType: .SUV, vinNumber: "0UCHYLATAKY", gasConsuption: 50, hasConditioning: true)
var Twingo = Car(carType: .buggati, vinNumber: "DADYDADYDA", gasConsuption: 30, hasConditioning: false)


var chooseCar = CarCollection()
chooseCar.addCarsInGarage(AstonMartin)



chooseCar.showOff(chooseCar.carsInGarage)

