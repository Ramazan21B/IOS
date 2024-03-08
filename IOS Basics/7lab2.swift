//10
struct Book{
    var title:String
    var author: String
    var price: Int
    var pages: Int

    func desctiption(){
        print("\(title), written by \(author), is \(pages) pages long and costs \(price) dollars.")
        
    }
}

var bookDescription = Book(title: "War and Peace", author: "Lev Tolstoi", price: 2000, pages: 1233)

print(bookDescription.desctiption())

//11
struct Post{
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like(){
        likes += 1
    }
}

var post = Post(message: "Biology", likes: 30, numberOfComments: 100)

print(post)
post.like()
print(post)

//12

struct RunningWorkout{
    var distance:Double
    var time:Double
    var elevation:Double

    func postWorkoutStats(){
        print("Distance: \(distance)m\nTime: \(time)s\nElevation: \(elevation)m")
    }
}

var runningworkout = RunningWorkout(distance: 1200, time: 30, elevation: 2000)

print(runningworkout.postWorkoutStats())

//13

struct Steps{
    var steps:Int
    var goal:Int

    mutating func takeStep(){
        steps += 1
    }
}

var instancesSteps = Steps(steps: 200, goal: 1000)

print(instancesSteps)

instancesSteps.takeStep()

print(instancesSteps)

//14

struct Rectangle{
    var width:Int
    var height:Int

    var area: Int{
        width * height
    }
}

var areaRectangle = Rectangle(width: 20, height: 40)

print(areaRectangle.area)

//15

struct Height{
    var heightInInches: Double{
        didSet{
            let inCm = heightInInches * 2.54
            if heightInCantimeters != inCm{
                heightInCantimeters = inCm

            }
        }
    }

    var heightInCantimeters:Double{
        didSet{
            let inInches = heightInCantimeters / 2.54
            if heightInInches != inInches{
                heightInInches = inInches
            }
        }
    }
    init(heightInInches:Double){
        self.heightInInches = heightInInches
        self.heightInCantimeters = heightInInches * 2.54
    }

    init(heightInCantimeters:Double){
        self.heightInCantimeters = heightInCantimeters
        self.heightInInches = heightInCantimeters / 2.54
    }
}

var height = Height(heightInCantimeters: 120)

print(height)

//16

// struct RunningWorkout{
//     var distance: Double
//     var time: Double
//     var elevation: Double
    
// }
// 17

struct Steps1{
    var steps: Int{
        willSet{
            if newValue == goal{
                print("Congragulations")
            }
        }
    }
    var goal: Int

    mutating func takeStep(){
        steps += 1
    }
}

var steps = Steps1(steps: 9999, goal: 10000)

steps.takeStep()

print(steps)