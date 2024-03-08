//1
var registrationList:[String] = []
registrationList.append("Сара")
print(registrationList)


registrationList += ["Серик",  "Меруерт", "Мансур", "Рахат"]

print(registrationList)

registrationList.insert("Алмас", at: 2)

print(registrationList)

registrationList[5] = "Алуа"

print(registrationList)

let deletedItem = registrationList.removeLast()

print(deletedItem)

//2

var runningExercises = ["Пробежка", "Спринт"]
var walkingExercises = ["Ходьба", "Быстрая ходьба"]

var challenges: [[String]] = [runningExercises, walkingExercises]

if challenges.count > 1 && challenges[1].count > 0 {
    print("Первый элемент из второго списка: \(challenges[1][0])")
}

challenges.removeAll()

var completedExercises: [String] = []

if completedExercises.isEmpty {
    print("Начните делать упражнения!")
} else if completedExercises.count == 1 {
    print("Вы выбрали задание: \(completedExercises[0])")
} else {
    print("Вы выбрали несколько заданий")
}

//3

var dates = ["январь": 31, "февраль": 28, "март" : 31]
print(dates)

dates["April"] = 30
print(dates)

dates.updateValue(29, forKey: "февраль")
print(dates)

if let numberOfdaysInJanuary = dates["январь"] {
    print("January has 31 days")
} else {
    print("No such date")
}
//4

let shapesArray = ["Circle", "Square", "Triangle"]
let colorsArray = ["Red", "Green", "Blue"]

var sum: [String:[String]] = ["Shapes": shapesArray, "Colors": colorsArray]
print(sum)

if let lastElementcolorarray = sum["Colors"] {
    print(colorsArray.last)
}else {
    print("No such element")
}

//5
var dictionaryStep: [String:Double] = ["Easy": 10.0 , "Medium": 8.0, "Fast": 6.0]
print(dictionaryStep)

dictionaryStep["Sprint"] = 4.0
print(dictionaryStep)

dictionaryStep["Medium"] = 7.5
dictionaryStep["Fast"] = 5.8
print(dictionaryStep)

dictionaryStep.removeValue(forKey: "Sprint")

if let dictionaryStepMedium = dictionaryStep["Medium"] {
    print("Хорошо! Я буду поддерживать вас в темпе \(dictionaryStepMedium) минута в милю")
} else {
    print("Пусто")
}

protocol 