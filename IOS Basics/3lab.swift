//1
var name = "Ramazan"
print(name)
let favoriteQuote = "Трава всегда зеленее на другой стороне"
let emptyString = ""
if emptyString.isEmpty {
    print("Там ничего нет")
} else {
    print("Кажется там что-то есть")
}
//2

let city:String = "Almaty"
let region = "Medeu"
var home = ""
home += city
home += region

var introduction = "Я живу в"
introduction += home

let name1 = "Ramazan"
let age = 20

print("Меня зовут \(name1), и на следующий год мне будет \(age + 1) лет")

//3
let name2 = "Ramazan"
let surname = "Aitzhan"
var fullname = ""
fullname += name2 + " " + surname

print(fullname)

var previousBest = 5000
var newBest = 10000
let congratulations = "Поздравляем, \(name2)! Вы превзошли свой предыдущий рекорд в \(previousBest) шагов, сделав \(newBest) шагов вчера!"
print(congratulations)

//4

let nameInCaps = "RAMAZAN"
let name3 = "ramazan"

if nameInCaps == name3.uppercased(){
    print("Эти две строки равны")
} else {
    print("Эти две строки не равны")
}

if nameInCaps.lowercased() == name3 {
    print("\(nameInCaps) и \(name3) совпадают")
} else {
    print("\(nameInCaps ) и \(name3) не совпадают")
}

//4.2

let name4 = "Robert Downey Jr"

if name4.contains("Jr") {
    print("Это имя используется второе поколение")
} else {
    print("NOOOOOO")
}

//4.3

let textToSearchThrough = "быть или не быть вот в чём вопрос" 
let textToSearchFor = "быть или не быть"

if textToSearchThrough.contains("быть или не быть") && textToSearchFor.contains("быть или не быть") && textToSearchFor == textToSearchFor.uppercased(){
    print("I found")
} else {
    print("I did not find")
}

//4.4

let myname = "Ramazan"

print(myname.count)