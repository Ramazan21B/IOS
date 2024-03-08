for index in 1...5{
    print("numbers \(index)")
}

for _ in 1...5{
    print("Hello")
}

let names = ["Asem", "Anara", "Askar"]
for name in names{
    print("Hello \(name)")
}

for index in 0...names.count - 1 {
    print(names[index])
}

for letter in "ABCDFG"{
    print("letters is \(letter)")
}

for (index, letters) in "ABCDFG".enumerated(){
    print("\(index): \(letters)")
}

var numberofLives = 3
var stillAlive = true

while stillAlive {
    print("I still have number of lives \(numberofLives)")
    numberofLives -= 1
    if numberofLives == 0{
        stillAlive = false
    }
}