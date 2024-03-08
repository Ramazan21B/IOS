// var isSnowing = false
// print(!isSnowing)

// if !isSnowing {
//     print("Снег не идет")
// }

// let temprature = 37

// if temprature >= 36 && temprature <= 39 {
//     print("Tempretaure is ideal")
// } else if temprature < 36 {
//     print("Too cold")
// } else {
//     print("Too hot")
// }

// var isPluggedin = false
// var hasBatteryPower = false
// if isPluggedin || hasBatteryPower {
//     print("You can use Macbook.")
// } else {
//     print("Laptop discharged")
// }

// let numberOfWheels = 7
// switch numberOfWheels {
// case 0:
//     print("?")
// case 1:
//     print("One wheel")
//     case 2:
//     print("Bike")
//     case 3:
//     print("3 wheel bike")
//     case 4:
//     print("Kvadra")
//     default:
//     print("Too many wheels")
// }

// let character = "d"


// switch character {
//     case "a", "e" , "i" ,"o", "u" :
//     print("This article glasna")
//     default:
//     print("Soglasnaya")
// }

var distance = 1200
switch distance {
    case 0...9:
    print("Ваше место назначение уже близко")
    case 10...99:
    print("Vashe")
}

let tempreature = 70 
switch tempreture {
    case 65...75:
    print("Temperature ideal")
   
}

var largest: Int
let a = 15
let b = 46

largest = a > b ? a : b
print(largest)

var guest: String
var friend1 = "Ansar"
var friend2 = "Zhanna"
var invited = "Zhanna"

guest = invited == friend1 ? friend1 : friend2
print(guest)