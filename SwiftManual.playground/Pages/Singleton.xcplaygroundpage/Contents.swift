//: [Previous](@previous)

//: 下面有4种单例的写法，请选择你觉得最合适的是哪一种？

class SomeClassA {
    static let shared = SomeClassA()
    private init() {}
}

class SomeClassB {
    var name: String
    static let shared = SomeClassB()
    private convenience init() {
        self.init(name:"[Unnamed]")
    }
    init(name: String) {
        self.name = name
    }
}

class SomeClassC {
    static let shared = SomeClassC()
}

class SomeClassD {
    class var shared: SomeClassD {
        struct Singleton {
            static let shared = SomeClassD()
        }
        return Singleton.shared
    }
}

//: [Next](@next)
