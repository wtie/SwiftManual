//: [Previous](@previous)

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

//: [Next](@next)
