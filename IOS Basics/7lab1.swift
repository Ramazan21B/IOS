//Structurre

//1
struct GPS{
    var longtitide = 0.0
    var latitude = 0.0

}

var somePlace = GPS()


print(GPS.init())
somePlace.latitude = 51.514004
somePlace.longtitide = 0.125226

print(somePlace.latitude,somePlace.longtitide)

//2
struct Book{
    var name = ""
    var author = ""
    var pages = 0
    var price = 0
}

print(Book.init())
var FavouriteBook = Book()
FavouriteBook.name = "Jack London"
FavouriteBook.author = "Martin Iden"
FavouriteBook.pages = 600
FavouriteBook.price = 1950

print(FavouriteBook)
//3

struct RunningWorkout{
    var distance = 0
    var time = 0.0
    var height = 0
}

var firstRun = RunningWorkout()

firstRun.distance = 2396
firstRun.time = 15.3
firstRun.height = 94
print(firstRun)

//4
struct GPS2{
    var longtitide:Double
    var altitude:Double
}

var somePlace2 = GPS(longtitide: 51.514004, latitude: 0.125226)

print(somePlace2)

//5

struct Book2{
    var name:String
    var author:String
    var pages:Int
    var price:Int
}

var FavouriteBook2 = Book2(name: "Jack London", author: "Martin Iden", pages: 600, price: 1950)
print(FavouriteBook2)
//6

struct Laptop{
    var screenSize = 15
    var repairCount = 0
    var yearPurshased: Int

    init(screenSize:Int, repairCount: Int, yearPurshased:Int){
        self.screenSize = screenSize
        self.repairCount = repairCount
        self.yearPurshased = yearPurshased
    }
}

var myLaptop = Laptop(screenSize: 30, repairCount: 3, yearPurshased: 2022)
var my1Laptop = Laptop()

//7
struct Height{
    var HeightInInches:Double
    var HeightInCentimeters:Double
}

//8
struct User{
    var name:String
    var age:Int
    var height:Double
    var weight:Double
    var activityLevel:Int

    init(name:String, age:Int, height:Double, weight:Double, activityLevel:Int){
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.activityLevel = activityLevel
    }
}

var userInfo = User(name: "Arman", age: 12, height: 155.5, weight: 55, activityLevel: 90)

print(userInfo)

//9

struct Distance{
    var meters:Int
    var feet: Double

    init(meters:Int){
        self.meters = meters
        self.feet = meters * 3.28084
    }
    init(feet: Double){
        self.feet = feet
        self.meters = feet / 3.28084
    }
}

var mile = Distance(meters: 1200)

print(mile.feet)

var another = Distance(feet: 12.889933)

print(another.meters)

//10
