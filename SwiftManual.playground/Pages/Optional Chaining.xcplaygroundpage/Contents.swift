//: [Previous](@previous)

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


//: [Next](@next)
