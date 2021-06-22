//: [Previous](@previous)

//: 银河系有8大行星，请补充代码使我们可以使用下标的方式访问行星。

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    // 下标函数
}

let mars = Planet[4]
print(mars)

//: [Next](@next)
