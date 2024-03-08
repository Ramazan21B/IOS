func displayPi() {
    print("3.1415926")
}

displayPi()
displayPi()
displayPi()


func divisionby3(value:Double) {
    let result = value / 3
    print("If we divide \(value) by 3 we will get \(result)")
}

divisionby3(value: 3)
divisionby3(value: 2)

func divide(firstNumber:Double, secondNumber:Double){
    let result = firstNumber / secondNumber
    print("Result is \(result)")
}

divide(firstNumber: 4, secondNumber: 2)

func sayHello(to:String, and: String) {
    print("Hello \(to) and \(and)")
}

sayHello(to: "Roma", and: "Ainur")

func sayHello1(to person: String, and anotherPerson: String) {
    print("Hello \(person) and \(anotherPerson)")
}

sayHello(to: "Ramazan", and: "Roma")


func add(_ firstNumber: Int, _ secondNumber: Int) -> Int {
    firstNumber + secondNumber
}

let total = add(14,  6)
print(total)

print(add(18,  5))

func display(teamName: String = "No name", score:Int = 0) {
    print("\(teamName): \(score)")
}

display(teamName: "Wombats", score: 100)
display(teamName: "Wombats")
display()