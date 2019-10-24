import UIKit

enum NewEnum: Int {
    case none
    case a
    case b
}

let number: Int? = Optional.some(42)
let noNumber: Int? = NewEnum.none.rawValue
print(noNumber == 0)

// =============
public class ThermometerClass {
  private(set) var temperature: Double = 0.0
  public func registerTemperature(_ temperature: Double) {
    self.temperature = temperature
  }
}

let thermometerClass = ThermometerClass()
thermometerClass.registerTemperature(56.0)

public struct ThermometerStruct {
  private(set) var temperature: Double = 0.0
  public mutating func registerTemperature(_ temperature: Double) {
    self.temperature = temperature
  }
}

// Since struct is a value type, below code will fail to compile if we use let keyword when declaring thermometerStruct
var thermometerStruct = ThermometerStruct()
thermometerStruct.registerTemperature(56.0)


// =============
var thing = "cars"
let closure = { [thing] in
  print("I love \(thing)")
}
thing = "airplanes"
// Because of the capture list, [thing] this will print I love cars
closure()

let closure1 = {
  print("I love \(thing)")
}
// Omitting the capture list will result the closure use reference instead of value, thus print I love airplanes
closure1()

let onFinished: ((_ thing: String) -> Void) = { (thing) in
    print("On finished \(thing)")
}
onFinished(thing)
