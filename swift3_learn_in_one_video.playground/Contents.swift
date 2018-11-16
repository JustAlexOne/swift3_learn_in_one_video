import Cocoa
import Darwin

var str = "Hello, playground"
var hello = "Hello "
var world: String = "World"
var msg = hello + world
print("Hello \(world)")
print(msg)

// declare a constant
let pi = 3.14159
var myAge: Int = 42
print("Min Int \(Int64.min)")
print("Max Int \(Int64.max)")

var pi2: Double = 3.145
print("Min Double \(Double.leastNormalMagnitude)")
print("Max Double \(Double.greatestFiniteMagnitude)")

print("Max Float \(Float.greatestFiniteMagnitude)")
var canVote: Bool = true
var myGrade: Character = "A"
var three: Double = 3.0
var two: Int = 2

var five = three + Double(two)
print("3 : \(Int(3.14))")

// ------------------------------------------------------------------------------
var age: Int = 8

if age < 5 {
    print("Go to preschool")
} else if age == 5 {
    print("Go to Kindergarten")
} else if (age > 5) && (age <= 18) {
    var grade: Int = age - 5
    print("Go to Grade \(grade)")
} else {
    print("Go to College")
    
}
// ------------------------------------------------------------------------------
var income: Double = 12000
var gpa: Double = 3.7

print("Get Grant : \((income < 15000) || (gpa >= 3.8))")
print("Not True : \(!true)")

var age2: Int = 8

var canDrive: Bool = age >= 16 ? true : false

// ------------------------------------------------------------------------------

let ingredient = "pasta"

switch ingredient {
case "tomatos", "pasta":
    print("Spaghetti")
fallthrough // keyword to make it go further even though the first case is match. Now quite sure what this could be used for...
case "beans":
    print("Burrito")
case "potatoes":
    print("Mashed Potatoes")
default:
    print("Water")
}
// ------------------------------------------------------------------------------
let testScore: Int = 89
switch testScore {
case 93...100:
    print("You got an A")
default:
    print("You got an F")
}

// Math functions ------------------------------------------------------------------------------

print("5 + 4 = \(5 + 4)")
print("5 % 4 = \(5 % 4)")

var randNum: Int = 5
randNum += 1

// Strings ----------------------------------------------------------------------
var randStr = "This is a random string"
var randStr2 = " and here is another"
var randStr3 = randStr + randStr2
print("Length: \(randStr3.count)")
print("First: \(randStr3[randStr3.startIndex])")
let index5 = randStr3.index(randStr3.startIndex, offsetBy: 5)
print("5th \(randStr3[index5])")
print("Empty: \(randStr3.isEmpty)")

randStr2.insert("A", at: randStr2.startIndex)
randStr2.insert(contentsOf: "string ".characters, at: randStr2.index(randStr2.startIndex, offsetBy: 2))
print(randStr2)

let startIndex = randStr2.index(randStr2.startIndex, offsetBy: 2)
let endIndex = randStr2.index(randStr2.startIndex, offsetBy: 9)
let stringRange = startIndex ..< endIndex
let subStr = randStr2.substring(with: stringRange)
if let hereMatch = randStr2.range(of: "here") {
    randStr2.replaceSubrange(hereMatch, with: "there")
}
print(randStr2)

// Arrays ------------------------------------------------------------------
var array1 = [Int]()
print("Empty: \(array1.isEmpty)")
array1.append(5)
array1 += [7,9]
print("At index 1: \(array1[1])")
array1[0] = 4
array1.insert(10, at: 3)
array1.remove(at: 3)
array1[0...2] = [1,2,3]
print("Length: \(array1.count)")

// insert 5 zeros into array
var array2 = Array(repeating: 0, count: 5)

// combine arrays
var array3 = array1 + array2

for item in array3 {
    print(item)
}

for (index, value) in array3.enumerated() {
    print("Index \(index), value: \(value)")
}

var array4 = [1,2,3]
for element in array4 {
    print(element)
}

// walk through the range
for i in 1...5 {
    print(i)
}

// print all even numbers
for i in 1...10 where i % 2 == 0 {
    print("Even: \(i)")
}

// while loops
var i: Int = 1
while i < 10 {
    if i % 2 == 0 {
        i += 1
        continue
    }
    
    if i == 7 {
        break
    }
    print(i)
    i += 1
}

// "repeat" example. Guessing game

let magicNum: UInt32 = arc4random_uniform(10) + 1 // to exclude zero
var guess: UInt32 = 0

repeat {
    print("Guess: \(guess)")
    guess += 1
} while (magicNum != guess)

print("Magic number was \(guess)")

// ---------
var zerosCount: Int = 0

for _ in 1...1000  {
    let magicNum: UInt32 = arc4random_uniform(10)
    if magicNum == 0 {
        zerosCount += 1
    }
}
print("Found \(zerosCount) zeros")

// dictionaries ------------------------------------------------------------------
var dict1 = [Int: String]()
print("Empty dict1: \(dict1.isEmpty)")

dict1[1] = "Paul Smith"

var cust: [String: String] = ["1" : "Sally Marks", "2" : "Paul Marks"]
print("Size: \(cust.count)")

cust["3"] = "Doug Marks"
// change exisiting item in the map
cust["3"] = "Doug Holmes"

if let name = cust["3"] {
    print("Index 3: \(name)")
}

cust["3"] = nil

for (key, value) in cust {
    print("\(key) : \(value)")
}

// tuples ------------------------------------------------------------------

let height: Double = 6.25
let weight: Int = 175

let myData = (height, weight)
print("Height : \(myData.0)")

// another way - named items in tuple
let myData2 = (height: 6.25, weight: 175)
print("Height : \(myData2.height)")

// optionals ------------------------------------------------------------------

var politicalParty: String?
politicalParty = "Independent"

if politicalParty != nil {
    let party = politicalParty!
    print("Party: \(party)")
}

if let party = politicalParty {
    print("Party: \(party)")
} else {
    print("No Party")
}

let party = politicalParty ?? "No Party" // if the value of politicalParty is nil, then assign "No Party" to it (like providing a default value to it)


// functions ------------------------------------------------------------------
func getSum(num1 : Int, num2: Int) {
    print("Sum: \(num1 + num2)")
}

getSum(num1: 5, num2: 6)


// func with default value
func getSum2(num1 : Int, num2: Int = 1) { // 1 is the default value for num2
    print("Sum: \(num1 + num2)")
}

getSum2(num1: 5)

// func with return value
func getSum21(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

getSum2(num1: 5, num2: 7)


// varagrs
func getSum3(nums: Int...) -> Int {
    var sum: Int = 0
    for num in nums {
        sum += num
    }
    return sum
}
print("Sum \(getSum3(nums: 1,2,3,4,5))")


// nested functions
func doMath(num1: Double, num2: Double) {
    func divide() -> Double {
        return num1 / num2
    }
    print("Divide: \(divide())")
}

doMath(num1: 12.0, num2: 4.0)

// return multiple values
func twoMults(num: Int) -> (two: Int, three: Int) {
    let two: Int = num * 2
    let three: Int = num * 3
    return (two, three)
}
let mults = twoMults(num: 5)
print("2 mults of 5: \(mults.two), \(mults.three)")
print("2 mults of 5: \(mults.two, mults.three)") // print as tuple
print("Mults: \(mults)") // print the return value directly

// closures ------------------------------------------------------------------

var square: (Int) -> (Int) = {
    num in // 'in' here means the argument passed to the function, when this annonimous function is called
    return num * num
}

print("5 Squared : \(square(5))")

//assign closure to another variable
var squareCopy = square
print("5 Squared : \(squareCopy(5))")

// sort numbers in array with help of clousure
let numbers = [8,9,4,2,1,5,7]

let sortedNums = numbers.sorted(by: {
    x, y in x < y
})
print(sortedNums)

let squaredNums = numbers.map {
    (num: Int) -> String in
    "\(num * num)"
}
print(squaredNums)

// smae as squaredNums, but with different syntax
let squaredNums2 = numbers.map {
    num in
    "\(num * num)"
}
print(squaredNums2)


// return function from a function
func funcMaker(val: Int) -> (Int) -> Int {
    func addVals(num1: Int) -> Int {
        return num1 + val
    }
    return addVals
}

let add4 = funcMaker(val: 4) // add4 is a function which adds 4 to any number passed to this function as argument, and this function is creted inside of the function funcMaker()
print("4 + 5 = \(add4(5))")
print("4 + 7 = \(add4(7))")
print("4 + 7 = \(funcMaker(val: 4)(7))") // oneliner - very unreadable

// pass a fucntion as a parameter
func doMath2(mathFunc: (Int, Int) -> Int, val: Int){
    print("Sum : \(mathFunc(val, val))")
}

func addNums(a: Int, b: Int) -> Int {
    return a + b
}

doMath2(mathFunc: addNums, val: 5)

let nums2 = [1,2,3,4,5,6]

let evenNums = nums2.filter {
    (num1: Int) -> Bool in
    return num1 % 2 == 0
}
print("Even nums: \(evenNums)")

let sum = nums2.reduce(0) {
    (x: Int, y: Int) -> Int in
    return x + y // you can omit the 'return' keyword here actually
}
print("Sum: \(sum)")

// ENUMs ------------------------------------------------------------------

enum Emotion {
    case joy
    case fear
    case anger
    case disgust
    case sad
}

var feeling = Emotion.joy
feeling = .anger

print("Angry: \(feeling == .anger)")

// structs ------------------------------------------------------------------
struct Rectangle {
    var height = 0.0
    var lenght = 0.0
    
    func area() -> Double {
        let area = height * lenght
        return area
    }
}

let myRect = Rectangle(height: 10.0, lenght: 5.0)
print("Area: \(myRect.height) * \(myRect.lenght) = \(myRect.area())")

// classes ------------------------------------------------------------------
class Animal {
    var name: String = "No Name"
    var height: Double = 0.0
    var weight: Double = 0.0
    var sound: String = "No Sound"
    
    init(name: String, height: Double, weight: Double, sound: String) {
        self.name = name
        self.height = height
        self.weight = weight
        self.sound = sound
    }
    
    func getInfo() {
        print("\(self.name) is \(self.height) cms tall and weighs \(self.weight) kgs and likes to say \(self.sound)")
    }
    
    func getSum(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    func getSum(num1: Double, num2: Double) -> Double {
        return num1 + num2
    }
    
}
var rover = Animal(name: "Rover", height: 38, weight: 12.7, sound: "Ruff")
// var rover2 = Animal(height: 38, sound: "Ruff", name: "Rover2", weight: 12.7) // - error, you can't mess with the parameters order

rover.getInfo()
// class inheritence
class Dog: Animal { // class Dog extends Animal
    
    final func digHole() { // final func means that this can't be overriden (like in java)
        print("\(self.name) digs a hole")
    }
    
    override func getInfo() {
        super.getInfo()
        print("and digs holes")
    }
}

var spot = Dog(name: "Spot", height: 38, weight: 12.7, sound: "Ruff")
spot.getInfo()

// Polymorphism
func printGetInfo(animal: Animal) {
    animal.getInfo()
}

printGetInfo(animal: rover)
printGetInfo(animal: spot)

spot.name = "Doug"

print("Is Spot a Dog: \(spot is Dog)")
print("Is Spot a Dog: \(spot is Animal)")

// protocols (like interfaces) ------------------------------------------------------------------

protocol Flyable {
    var flies: Bool { get set }
    
    func fly(distMiles: Double) -> String
}

class Vehicle : Flyable {

    var flies: Bool = false
    
    var name: String = "No Name"
    
    func fly(distMiles: Double) -> String {
        if (self.flies) {
            return "\(self.name) flies \(distMiles) miles"
        } else {
            return "\(self.name) can't fly"
        }
    }
}

var fordF150 = Vehicle()
fordF150.name = "Ford F-150"
fordF150.flies = false
print(fordF150.fly(distMiles: 10))

// Errors ------------------------------------------------------------------
enum DivisionError: Error {
    case DivideByZero
}

func divide(num1: Float, num2: Float) throws -> Float {
    guard num2 != 0.0 else {
        throw DivisionError.DivideByZero
    }
    return num1 / num2
}

do {
    try divide(num1: 4, num2: 0)
} catch DivisionError.DivideByZero {
    print("Can't Divide by Zero")
}


// Extensions ------------------------------------------------------------------

// extend a double to work with different distance units
// in this example - assuming that the double is in meters, then we can convert it to kms, meters
extension Double {
    var km: Double { return self * 1000.0}
    var m: Double { return self}
    var ft: Double { return self * 3.28}
    var inch: Double { return self * 39.37}

    mutating func square() -> Double {
        let sqr = self * self
        return sqr
    }
}

let oneMeter = 1.0.inch
print("One Meter is \(oneMeter) inches")

var randNum2: Double = 5
print("Square of 5: \(randNum2.square())")


// done https://www.youtube.com/watch?v=dKaojOZ-az8&list=PLluU5RSQKcReQKoCBmOlE9yVxXtnGW1EV&index=6
