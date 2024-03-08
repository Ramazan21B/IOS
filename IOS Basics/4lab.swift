//1
func introduceMyself(){
    print("My name is Ramazan")
}
//2
//2.1
var steps = 0
func incrementSteps() {
    steps+=1
}
incrementSteps()
incrementSteps()
print(steps)

//2.2
let goal = 10000
var steps1 = 4000
func progressUpdate(goal:Int, steps:Int){
    let progressPercentage =  Double(goal) / Double (steps) * 100
    if progressPercentage < 10 {
        print("У вас хорошее начало")
    } else if progressPercentage < 50 {
        print("Вы почти на полпути!oal")
    } else if progressPercentage < 90 {
        print("Вы на полпути!")
    } else if steps < goal {
        print("Вы почти у цели!")
    } else {
        print("Вы превзошли свою цель")
    }
}
progressUpdate(goal: goal, steps: steps1)

//3
func introduction(name:String, home: String, age:Int){
    print("\(name), city is \(home) and age \(age)")
}

introduction(name: "Roma", home: "Almaty", age: 20)

//4 
//4.1
func progressUpdate1(goal:Int, steps:Int){
    let progressPercentage =  Double(goal) / Double (steps) * 100
    if progressPercentage < 10 {
        print("У вас хорошее начало")
    } else if progressPercentage < 50 {
        print("Вы почти на полпути!oal")
    } else if progressPercentage < 90 {
        print("Вы на полпути!")
    } else if steps < goal {
        print("Вы почти у цели!")
    } else {
        print("Вы превзошли свою цель")
    }
}
progressUpdate(goal: 5000, steps: 12)
//4.2
func pacing(currentDistance: Double, totalDistance: Double, currentTime:Double,goalTime: Double) {
    pace = currentTime/(currentDistance/totalDistance)
    if pace > goalTime {
        print("Так держать!")
    }else{
        print("Тебе нужно поднапрячься немного сильнее!»s")
    }
}
//5
//5.1
func greeting(name:String){
    print("Hello \(name), How are you?")
}
//5.2
func operation(a:Int, b:Int){
    print(a * b + 2)
}
