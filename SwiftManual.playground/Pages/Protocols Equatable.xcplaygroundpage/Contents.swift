//: [Previous](@previous)

//: 修改程序使结构体 vector 可以比较是否相等

struct Vector3D {
    var x = 0.0, y = 0.0, z = 0.0
}

let twoThreeFour = Vector3D(x:2.0, y:3.0, z:4.0)
let anotherTwoThreeFour = Vector3D(x:2.0, y:3.0, z:4.0)
if (twoThreeFour == anotherTwoThreeFour){
    print("这两个 Vector 相同")
}

//: [Next](@next)
