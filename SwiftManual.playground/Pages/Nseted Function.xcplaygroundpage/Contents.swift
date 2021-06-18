//: [Previous](@previous)

//: 下面函数输出什么内容
//:

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

//: [Next](@next)
