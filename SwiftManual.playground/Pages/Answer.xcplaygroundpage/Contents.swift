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

//: - Experiment:
//: 有一个 Any 类型的数组，如何加入一个 optional 类型的值？

var things = [Any]()
let optionalNumber: Int? = 3
things.append(optionalNumber as Any)

//: Any 可以表达任意类型的实例，包括函数类型 function
//: AnyObject 可以表达任意类的类实例

//: - Experiment:
//: Classes 和 Structure 有很多的共同与不同的地方，请说出 6 个共同和5个不同的地方来

//: 共同：属性、方法、下标、初始化函数、扩展、协议
//：不同：classes 比 Structure 多了继承、类型转换、析构、引用计数，classes 是引用类型，structure 是值类型

//: - Experiment:
//: 时钟的表盘每隔5分钟展示一个数字，请是用 for - in 构造这个数字[5,...60]数组
let minutes = 60
let minuteInterval = 5
var tickMarkArray = [Int]()
for tickMark in stride(from: minuteInterval, through: minutes , by: minuteInterval) {
    tickMarkArray.append(tickMark)
}

print(tickMarkArray)

//: - Experiment:
//: 下面语句输出什么内容：

let somePoint = (1,1)

switch somePoint {
case (0,0):
    print("1. \(somePoint) is at the origin")
case (0,_):
    print("2. \(somePoint) is on the x-axis")
case (_,0):
    print("3. \(somePoint) is on the y-axis")
case (-2...2,-2...2):
    print("4. \(somePoint) is inside the box")
default:
    print("5. \(somePoint) is outside of the box")
}

//: - Experiment:
//: 银河系有8大行星，请补充代码使我们可以使用下标的方式访问行星。

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}
let mars = Planet[4]
print(mars)

//: - Experiment:
//: 为类型添加了 Extensions， 可以覆盖原有的功能吗？

//: 不能

//: - Experiment:
//: 给 Int 类型添加一个方法 square，求得每一个值的平方

extension Int {
    mutating func square(){
        self = self * self
    }
}

var someInt = 3
someInt.square()
print(someInt)

//: - Experiment:
//: 写一个函数，下标[n]返回数字右侧的第n位数字。
//: 12345678[0] = 8
//: 12345678[1] = 7

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}

//: - Experiment:
//: 补充 doSomething 函数内的代码，可以使下方的两个 print 输出正确的值
var completionHandlers = [() -> Void]()
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure {
            self.x = 100
        }
        someFunctionWithNonescapingClosure {
            x = 200
        }
    }
}
let instance = SomeClass()
instance.doSomething()
print(instance.x)
// Prints "200"

completionHandlers.first?()
print(instance.x)
// Prints "100”
//: [Next](@next)

//: - Experiment:
//: 解开第17行的注释，修改函数使函数内打印出 Prints 的值。
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider()) !")
}

serve(customer: {customersInLine.remove(at: 0)})
// Prints "Now serving Chris !"

func otherServe(customer customerProvider: @autoclosure () -> String) {
    print("Now other serving \(customerProvider()) !")
}

otherServe(customer: customersInLine.remove(at: 0))
// Prints "Now other serving Alex !"
