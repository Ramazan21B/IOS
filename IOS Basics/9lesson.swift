// struct Temperature{
//     var celsious: Double
// }
// let temperature = Temperature(celsious: 30.0)
// print(temperature.celsious)

// let fahrenheitValue = 98.6

// let celciusValue = (fahrenheitValue - 32) / 1.8

// struct Square{
//     var a: Int
//     var b: Int
//     var c: Int
//     var d: Int
//     func sum() -> Int{
//         a + b + c + d
//     }
// }

// var sumSize = Square(a: 2, b: 3, c: 1, d: 5)
// let sumOfnumbers = sumSize.sum()

// struct Odometer{
//     var count: Int = 0

// }

struct Temperature{
    var celsious: Double
    var fahrenheit: Double
    var kelvin: Double

    init(celsious: Double){
        self.celsious = celsious
        fahrenheit = celsious * 1.8 + 32
        kelvin = celsious + 273.15
    }

    init(fahrenheit: Double) {
        self.fahrenheit = fahrenheit
        celsious = (fahrenheit - 32) / 1.8
        kelvin = celsious + 273.15
    } 

    init(kelvin: Double){
        self.kelvin = kelvin
        celsious = kelvin - 273.15
        fahrenheit = celsious * 1.8 + 32
    }
}

let currentTempereture = Temperature(celsious: 18.5)
let boiling = Temperature(fahrenheit: 212.0)
let freezing = Temperature(kelvin: 273.15)

struct Money{
    var tenge: Int
    var euro: Int
    var dollar: Int

    init(tenge: Int){
        self.tenge = tenge
        
    }
}