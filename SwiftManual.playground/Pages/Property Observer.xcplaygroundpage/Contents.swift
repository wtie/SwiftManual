//: [Previous](@previous)

//: 初试话方法对属性的设定会触发属性观察的调用吗？ 如果在 willSet 和 didSet 中对属性再次设定会触发属性观察的调用吗？

import Foundation

class MyClass {
    let oneYearInSecond: TimeInterval = 365 * 24 * 60 * 60
    var date: NSDate {
        didSet {
            if (date.timeIntervalSinceNow > oneYearInSecond) {
                date = NSDate().addingTimeInterval(oneYearInSecond)
            }
        }
    }
    init() {
        date = NSDate()
    }
}

//: [Next](@next)
