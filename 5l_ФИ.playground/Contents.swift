//: A UIKit based Playground for presenting user interface
  
import UIKit

protocol fullNameOfObject {
    var fullName : String {get}

}
extension fullNameOfObject {
    var release : Int {return self as! Int}
}





class TrunkCar: fullNameOfObject {
    var brand: String
    var model: String
    var release: Int

    init(brand: String, model: String, release: Int) {
        self.brand = brand
        self.model = model
        self.release = release
    }
    
    var fullName: String {
        return (brand + " ") + model
    }
}

let myTrunkCar = TrunkCar(brand: "Volvo", model: "FH", release: 2017)
//print(myTrunkCar.fullName)

extension TrunkCar: CustomStringConvertible {
    var description : String {
        return "My Trunkcar is \(fullName), release: \(release)"
    }
}

class SportCar: fullNameOfObject {
    var brand: String
    var model: String
    var release: Int

    init(brand: String, model: String, release: Int) {
        self.brand = brand
        self.model = model
        self.release = release
    }
    
    var fullName: String {
        return (brand + " ") + model
    }
}

let mySportCar1 = SportCar(brand: "BMW", model: "m3", release: 1999)

//print(mySportCar.fullName)

extension SportCar: CustomStringConvertible {
    var description : String {
        return "My Sportcar is \(fullName), release: \(release)"
    }
}

print(myTrunkCar.description)
print(mySportCar1.description)


