var names: [String] = ["Mansur", "Arman", "Askar"]

var friends = ["Rahat", "Ramzan", "Aida"]

var number = [2, -56, -100, 33, 22, 45]

if friends.contains("Ramzan"){
    print("YEs")
} else {
    print("No")
}

var myArray1: [Int] = []


if number.contains(2){
    print("There is number")
} else {
    print("There is no number")
}


var myArray = [Int](repeating: 3, count: 12)
print(myArray)
let count = myArray.count
print(count)
print(myArray.capacity)

if friends.isEmpty{
    print("You don't have friens")
} else {
    print("You have friends")
}

print(friends[0])
friends[1] = "Asem"
print(friends)

friends.append("Nurasyl")
print(friends)
friends += ["John", "German"]
print(friends)

friends.insert("Mike", at: 2)
print(friends)

let removedName = friends.remove(at: 1)
print(removedName)

let removedLast = friends.removeLast()
print(friends)

let newNames = names + friends
print(newNames)

let arr1 = [1,3,4]
let arr2 = [3,4,1]
let arr3 = [10,9,5]

let container = [arr1, arr2, arr3]

let firstArr = container[2]
let firstElement = container[1][2]

print(container)
print(firstArr)
print(firstElement)