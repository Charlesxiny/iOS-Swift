//: Playground - noun: a place where people can play

import UIKit

func sumOfNumbers(numbers: Int...) -> Int{
    var sum = 0 ;
    for num in numbers {
        sum += num
    }
    return sum
}

sumOfNumbers(20,10,14,44,44)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool{
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, condition: lessThanTen)
//返回函数类型
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var incerment = makeIncrementer()
incerment(7)

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumber = numbers.map { number in 3 * number
}

print(mappedNumber)
let sortedNumber = numbers.sort {$0 > $1}
print(sortedNumber)

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
let s = Shape()
s.numberOfSides = 7
s.simpleDescription()


class NamedShape{
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String){
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}
class Square: NamedShape {
    var sideLength: Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDec() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "quene"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
let two = Rank.two
let value = two.rawValue
let five = Rank.five
let fiveV = five.rawValue

if let convertRank = Rank(rawValue: 3){
    let threeDec = convertRank.simpleDec()
}

enum Suit {
    case spades, hearts, diamods, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamods:
            return "diamods"
        case .clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()

enum PrinterError: ErrorType{
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do{
    let printerReponse = try send(1040, toPrinter: "Bi Sheng")
    print(printerReponse)
}catch{
    print(error)
}

do{
    let printerReponse_ = try send(1440, toPrinter: "Gutenberg")
    print(printerReponse_)
}catch{
    print(error)
}
do{
    let printerRepnse01 = try send(1440, toPrinter: "Never Has Toner")
    print(printerRepnse01)
}catch PrinterError.onFire {
    print("i'll just put over here,with the rest of the fire")
}catch let printerError as PrinterError {
    print(printerError)
}catch{
    print(error)
}

let printSucess = try? send(1884, toPrinter: "Mergenthaler")
let printFailure = try? send(1885, toPrinter: "Never Has Toner")
//try?代表不处理错误，如果出错，返回nil
//try!代表忽略异常处理，保证不会有异常，如果有异常，则报错
//do｛｝catch｛｝代表捕捉错误

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "bread"]

func fridgeContent(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer{
        fridgeIsOpen = false
    }
    let result = fridgeContent.contains(food)
    return result
}
fridgeContent("banana")
print(fridgeIsOpen)

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
makeArray(repeating: "knock", numberOfTimes: 4)
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

var possibleInteger: OptionalValue<Int> = .none

possibleInteger = .some(100)

let minValue = UInt8.min
let maxValue = UInt8.max
let maxInt16 = Int16.max
let maxInt32 = Int32.max
let maxInt64 = Int64.max
let maxI = Int.max

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
let oneMillion = 1_000_000

let http404Error = (404,"Not Found")
let (stausCode, statusMessage) = http404Error
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

let view = UIView(frame: CGRectMake(0, 0, 640, 960))
view.backgroundColor = UIColor.whiteColor()
var frameWithView = view.frame

let age = 4
assert(age >= 0, "a person's age cannot be less than zero")

(1, "zebra") < (2, "apple")
(3, "apple") < (3, "bird")


let defaultColorName = "red"
var userDefineColorName: String?
var colorNameToUse = userDefineColorName ?? defaultColorName
userDefineColorName = "green"
colorNameToUse = userDefineColorName ?? defaultColorName
for index in 1...5 {
    print("\(index) time 5 is \(index * 5)")
}
for i in 0...5{
    print(i)
}
for i in 0..<5{
    print(i)
}
var myData: [Int] = [10,21,2,3,14,33,29,12,9]

print(myData.count)

for i in 0 ..< myData.count - 1 {
    for j in 0 ..< myData.count - 1 - i{
        print(i)
        print(j+1)
        if myData[j] > myData[j + 1] {
            var temp = myData[j + 1]
            myData[j + 1] = myData[j]
            myData[j] = temp
        }
    }
}
print(myData)

for character in "Dog!🐶".characters {
    print(character)
}

let greeting = "Guten Tag"
greeting[greeting.startIndex]

for index in greeting.characters.indices{
    print("\(greeting[index])")
}

var welcome = "hello"
welcome.insert("!", atIndex: welcome.endIndex)
