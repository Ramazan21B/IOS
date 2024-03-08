/*let poem = """
Совсем не знак \"бездушья\" молчаливость.
Гремит \rлишь то, \\что пусто \tизнутри
"""

print(poem)


var mystr = ""

print(mystr.isEmpty)

if mystr.isEmpty{
    print("String is empty")
}else{
    print("Stirng is not empty")
}

let string1 = "HEllo "
let string2 = " world"
let name = "Rama"

var my = string1 + string2
my += name
print(my)

let age = 20
print("My name is \(name) and I am \(age)")

let a = 4
let b = 2
print("if a = \(a) and b = \(b) so it will be \(a + b)")


let passwordSaved = "qwerty"
let passwordEntered = "qwerty"

if passwordEntered == passwordSaved{
    print("Correct")
}else {
    print("Incorrect password")
}


let name = "Johnny"
print(name.lowercased())
print("Johnny".lowercased())

if name.lowercased() == "Johnny".lowercased(){
    print("Correct")
} else{
    print("Not")
}


let passwordSaved = "qwerty"
let passwordEntered = "QWERTY"

if passwordEntered.lowercased() == passwordSaved.lowercased(){
    print("Correct")
}else {
    print("Incorrect password")
}

let name1 = "Johhny"
print(name1.uppercased())
print("Johhnny".uppercased())


let greeting = "Hello, world! My name is Ramazan, my name is Marat"
print(greeting.hasPrefix("Hello"))
print(greeting.hasSuffix("world"))
print(greeting.hasSuffix("World"))

if greeting.contains("my"){
    print("Beginning words")
} else {
    print("Did not find matching words")
}
*/

let name = "Ramazan"
let count = name.count
print(count)

let newPassword = "123456789"
if newPassword.count < 8 {
    print("This password is too short. Password must contain at least 8 symbols")
} else {
    print("You changed password")
}

let email = "ram@gmail.com"
if email.contains("@gmail.com"){
    print("Email is correct")
} else {
    print("Email is nor correct")
}

let someCharacter: Character = "e"
switch someCharacter{
    case "a", "e", "i", "o", "u":
    print("\(someCharacter) is vowel")
    default:
    print("\(someCharacter) is not vowel")
}
