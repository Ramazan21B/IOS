import Foundation
//1.1
for index in 1...100{
    print(index)
}

//1.2
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for (index, alphabet) in alphabet.enumerated(){
    print("\(index + 1) \(alphabet)")
}

//1.3
var capitals = ["USA": "Washington", "Russia": "Moscow", "Kaxakhstan": "Astana"]

for capitals in capitals{
    print("Capital of \(capitals.key) - \(capitals.value)")
}
//2
var exercises = ["Push ups", "Pull ups", "Squats"]

for exercise in exercises{
    print(exercise)
}

var movements = ["Push ups": 120, "Pull ups": 50, "Squats": 90]

for (movement, pulses) in movements{
    print("Average pulse during \(movement): \(pulses) ")
}
//3
var sideOfCube: Int
var numberOne = false

while !numberOne{
    sideOfCube = Int.random(in: 1...6)
    print(sideOfCube)
    if sideOfCube == 1{
        break
    }
}

//4
let cadence = 160
var testSteps = 40

while(testSteps < 10){
    print("Сделайте шаг")
    Thread.sleep(forTimeInterval: TimeInterval(60) / TimeInterval(cadence))
    testSteps += 1
}

testSteps = 0

repeat{
    print("Сделайте шаг")
    Thread.sleep(forTimeInterval: TimeInterval(60) / TimeInterval(cadence))
    testSteps += 1
}while (testSteps < 10)

//5
var mycity = false
var cities: [String:String] = ["LosAngeles": "LA", "Almaty": "ALa", "Moscow": "Msc", "NewYork": "NW"]

for (city, shortNames) in cities{
    if city == "Almaty"{
        mycity = true
        print("I found your city its \(city) \(shortNames)")
    }
    print(city,shortNames)
}

//6
var movementHeartRates = ["Pull ups": 120, "Push ups": 100, "Squats": 80, "Press": 20]

let lowHR = 90
let highHR = 120
for (movement, heartRate) in movementHeartRates{
    if heartRate >= lowHR && heartRate <= highHR{
        print("Вы могли бы сделать \(movement)")
    }
}

//7
let text = "Столица Казахстана - Астана"

var aCount = 0
for letters in text{
    if letters == "а"{
        aCount += 1
    }
}

print(aCount)

//8

let array = [0, 1, 2, 3, 4, 1, 5, 6, 2, 1]
var count = 0
for element in array{
    if element == 1{
        count += 1
    }
}

print(count)