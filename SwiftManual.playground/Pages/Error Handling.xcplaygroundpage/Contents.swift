//: [Previous](@previous)

//: 下面的程序 try vendingMachine.vend(itemName: snackName) 编译报错，请使用多种方式解决

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

class VendingMachine {
    func vend(itemName name:String) throws {
        guard name.hasPrefix("A") else { throw VendingMachineError.invalidSelection }
        // 其他事件抛出异常省略
    }
}

//let favoriteSnacks = ["Alice": "Chips", "Bob": "Licorice", "Eve": "Pretzels"]
//
//func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) {
//    let snackName = favoriteSnacks[person] ?? "Candy Bar"
//    try vendingMachine.vend(itemName: snackName)
//}


//: [Next](@next)
