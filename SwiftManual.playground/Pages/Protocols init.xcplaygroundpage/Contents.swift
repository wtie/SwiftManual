//: [Previous](@previous)

//: 类 SubClass 有一个父类,父类定义了init，同时又实现了协议SomeProtocol，协议类定义了 init，请问 SubClass 的init 函数前面应该使用什么关键字呢？
protocol SomeProtocol {
    init()
}

class SomeSuperClass {
    init(){
        
    }
}

//class SomeSubClass: SomeSuperClass, SomeProtocol {
//     init() {
//
//    }
//}
//: [Next](@next)
