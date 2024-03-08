struct Person{
    var name: String
    var age: Int
    func sayHello(){
    print("Hello there my name is \(name) and I am \(age) old")
}
}


let person1 = Person(name: "Jasmine", age: 23)
print(person1.name)
print(person1.age)
person1.sayHello()

let person2 = Person(name : "Ainur", age: 26)
print(person2.name, person2.age)
person2.sayHello()


struct Shirt{
    var size: String
    var color: String
}

let myShirt = Shirt(size: "XL", color: "blue")
let yourShirt = Shirt(size: "M", color: "red")

print(myShirt.size, myShirt.color)
print(yourShirt.size, myShirt.color)

struct Movie{
    var name: String
    var date: String

    func showInfo(){
        print("Name of this movie is \(name) and date \(date)")
    }
}

let Napoleon = Movie(name: "Napoleon", date: "19.11.2023")
Napoleon.showInfo()
print(Napoleon.name, Napoleon.date)

let string = String.init()
print(string)
let integer = Int.init()
print(integer)
let bool = Bool.init()
print(bool)

struct Odometr {
    var count: Int = 0
}

let odometr = Odometr()
print(odometr.count)

let odometr2 = Odometr()
print(odometr.count)

struct BankAccount {
    var accountNumber: Int = 0
    var balance: Double = 0
}

let newAccount = BankAccount(accountNumber: 123, balance: 340)
let transferredAccount = BankAccount(accountNumber: 123)

print(newAccount.accountNumber, newAccount.balance)
print(transferredAccount.accountNumber, transferredAccount)

// struct Temprature {
//     var celsious: Double

//     init(celsious: Double){
//         self.celsious = celsious
//     }
//     init(fahrenheit: Double){
//         celsious = (fahrenheit - 32) / 1.8
//     }
// }

// let temprature = Temprature(celsious: 30.0)
// print(temprature.celsious)

// let fahrenheitValue = 98.6
// let celciusValue = (fahrenheitValue - 32) / 1.8

// let newTemperauture = Temprature(celsious: celciusValue)
// print(newTemperauture.celsious)


struct Temprature{
    var celsious: Double

    init(celsious: Double){
        self.celsious = celsious
    }
    init(fahrenheit: Double){
        celsious = (fahrenheit - 32) / 1.8
    }
}

let currentTempreture = Temprature(celsious: 18.5)
let boiling = Temprature(fahrenheit: 212.0)

print(currentTempreture.celsious)
print(boiling.celsious)

struct Money{
    var tenge: Int

    init(tengeValue: Int){
        self.tenge = tengeValue
    }

    init(dollar: Int){
        tenge = dollar * 459
    }
}

let curseOfTenge = Money(tengeValue: 20000)
let curseOfDollar = Money(dollar: 100)
print(curseOfTenge.tenge)
print(curseOfDollar.tenge)


// struct Weight{
//     var weight:Int = 40{
//         willSet{
//             if 
//             print(newValue)
//         }
//         didSet{
//             print(oldValue)
//         }
//     }
// }

struct SeaLevel{
    static var levelOfWater = 0

    static func defineLevelOfWater(_ level: Int){
        if level > levelOfWater{
            print("You are higher than level of sea")
        } else {
            print("You are lower than level of sea")
        }
    }
}

let myLevel = SeaLevel.defineLevelOfWater(12)
print(myLevel)