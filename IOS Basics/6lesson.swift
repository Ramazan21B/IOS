var scores = ["Richard":500, "Luke":400, "Cheryl":800]

var myDictionary1 = [String: Int]()
var myDictionary2 = Dictionary<String, Int>()
var myDictionary3: [String: Int] = [:]

print(scores)

scores["Oli"] = 399

print(scores)

// let oldvalue = scores.updateValue(value: 100, forKey: "Richard")
// print(oldvalue)
// print(scores)

if let oldValue = scores.updateValue(200, forKey: "Richard"){
    print(oldValue)
} else {
    print("No word")
}

var capitals = ["Kazakhstan": "NurSultan", "Kyrgystan": "Bishkek", "Uzb": "Tashkent"]
print(capitals)

let oldCapitalKz = capitals.updateValue("Astana", forKey: "Kazakhstan")
print(capitals)

if let oldCapitalKz = capitals.updateValue("Astana", forKey: "Kazakhstan") {
    print("\(oldCapitalKz)")
} else {
    print("No ")
}

print(capitals)

// capitals["Kazakhstan"] = nil
// print(capitals)

if let removedCapital = capitals.removeValue(forKey: "Kazakhstan") {
    print("\(removedCapital) was deleted")
} else {
    print("No such country")
}

print(capitals)

capitals["Singapore"] = "Singapore"
capitals["USA"] = "Washington"
capitals["Poland"] = "Warsaw"

let countries = Array(capitals.keys)
print(countries)
let cities = Array(capitals.values)
print(cities)
