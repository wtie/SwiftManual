//: [Previous](@previous)

//: 解开第17行的注释，修改函数使函数内打印出 Prints 的值。
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider()) !")
}

serve(customer: {customersInLine.remove(at: 0)})
// Prints "Now serving Chris !"

func otherServe(customer customerProvider: () -> String) {
    print("Now other serving \(customerProvider()) !")
}

//otherServe(customer: customersInLine.remove(at: 0))
// Prints "Now other serving Alex !"
//: [Next](@next)
