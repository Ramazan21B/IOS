//1
print(9 == 9) //true
print(9 != 9) //false
print(47 > 90) //alse
print(47 < 90) // true
print(4 <= 4) //true
print(4 >= 5) // false
print((47 > 90) && (47 < 90)) // false
print((47 > 90) || (47 < 90)) // true
print(!true) // false

//2

let tenge = 2000

if tenge == 0 {
    print("Извини, но ты на мели!")
} else if tenge < 400 {
    print("Вау, у тебя есть деньги на пирожки!")
} else {
    print("Ого, поедешь домой на такси")
}

// 3
let hasfish = true
let hasPizza = true
let hasVegan = true

if hasfish && hasPizza && hasVegan {
    print("Поехали!")
} else {
    print("Извините, нам нужно выбрать другое место")
}

//4 
let isNiceWeather:Bool
let temperature = 28
let isSunny = true
let isRaining = false

if temperature > 28 && isSunny && !isRaining {
    isNiceWeather = true
    print("Я иду на прогулку!")
} else {
    isNiceWeather = false
}

// Additional task
//1
let season = 2

switch season{
    case 1:
    print("Зима")
    case 2:
    print("Весна")
    case 3:
    print("Лето")
    case 4:
    print("Осень")
    default:
    print("no season")
}

// 2
let Aidar = true
let Ramazan = true
let John = true

let list = true

if list == Aidar && Ramazan && John {
    print("Добро пожаловать")
} else {
    print("Вас нет в списке")
}
// 3

let age = 40

switch age{
    case 0...2:
    print("Младенец")
    case 2...14:
    print("Детский билет")
    default:
    print("Взрослый билет")
}

//4
var lagman = 4000
var plov = 10000
var expensive:Int
expensive = lagman > plov ? lagman:plov
print(expensive)
// 5

var number = 2
switch number{
    case 1:
    print("Work")
    case 2:
    print("Work")
    case 3:
    print("Study")
    case 4:
    print("Dancing")
    case 5:
    print("Day off")
    default:
    print("Day off")
}

//6
let StationLetters = "A"

switch StationLetters{
    case "A","a":
    print("Алмалы 14:00")
    case "B","b":
    print("Абай 15:00")
    case "C", "c":
    print("Райымбек 16:00")
    case "D","d":
    print("Жибек жолы 10:00")
    case "E","e":
    print("Москва 13:00")
    default:
    print("Такой станции не существует")
    print("Повторите попытку еще раз")   
}

// 7
let numberOfFingers = 5

switch numberOfFingers{
    case 1:
    print("большой")
    case 2:
    print("указательный")
    case 3:
    print("средний")
    case 4:
    print("безымянный")
    case 5:
    print("мизинец")
    default:
    print("?????????")
    
}