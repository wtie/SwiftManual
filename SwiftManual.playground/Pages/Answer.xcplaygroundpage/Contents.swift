//: [Previous](@previous)

//: # 答题游戏答案

//: - Experiment:
//: 打印出： I work for "樊登读书"
//:
let words = """
    I work for "樊登读书"
    """
print(words)

//: - Experiment:
//: 用数组[15,58,510] 输出一个新数组 ["OneSix","FiveEight","FiveOneZero"]
//:
let numbers = [15,68,510]
let digitName = [0:"Zero",1:"One",2:"Two",3:"Three",4:"Four",5:"Five",6:"Six",7:"Seven",8:"Eight",9:"Nine"]
let numberStrings = numbers.map { (number) -> String in
    var number = number
    var outPut = ""
    repeat {
        outPut += digitName[number%10]!
        number = number/10
    } while (number > 0)
    return outPut
}
print(numberStrings)


//: - Experiment:
//: 输出下面两个集合的交集 ["Bethany","Eric"]
//:

let employees: Set = ["Alicia", "Bethany", "Chris", "Diana", "Eric"]
let neighbors: Set = ["Bethany", "Eric", "Forlani", "Greta"]
let bothNeighborsAndEmployees = employees.intersection(neighbors)
print(bothNeighborsAndEmployees)

//: - Experiment:
//: 下面函数输出什么内容
//: 知识点：

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runnintTotal = 0
    func incrementer() -> Int {
        runnintTotal += amount
        return runnintTotal
    }
    return incrementer
}
let incrementByTen = makeIncrementer(forIncrement: 10)
print("1.输出:\(incrementByTen())")
let alsoIncrementByTen = incrementByTen
print("2.输出:\(alsoIncrementByTen())")


//: - Experiment:
//: 下面函数输出什么内容,简单说明里面的知识点
//:
class Person {
    var residence: Residence?
}
class Residence {
    var address: Address?
}
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}
let john = Person()
if let buildingIdentifier = john.residence?.address?.buildingIdentifier() {
    print("1. John's building identifier is \(buildingIdentifier)")
} else {
    print("2. John has not building identifier")
}
let redidence = Residence()
john.residence = redidence
let address = Address()
address.buildingName = "The Larches"
address.street = "Laurel Street"
john.residence?.address = address
if let beginsWithThe = john.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    if beginsWithThe {
        print("3. John's building identifier begins with \"The\".")
    }
}

//: 可选链的两个知识点：
//: 1. 如果你想通过可选链得到一个 Int 类型的值，那么总会返回一个可选类型的值 Int？，无论可选链有几层。
//: 2. 如果你想通过可选链得到一个 Int? 类型的值，那么总会返回一个可选类型的值 Int？，无论可选链有几层。



//: [Next](@next)
