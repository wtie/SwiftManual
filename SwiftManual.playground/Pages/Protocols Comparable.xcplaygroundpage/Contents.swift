//: [Previous](@previous)

//: 完善 enum SkillLevel,使其具备排序功能

enum SkillLevel {
    case beginner
    case intermediate
    case expert(stars: Int)
}

var levels = [SkillLevel.intermediate, SkillLevel.beginner, SkillLevel.expert(stars: 2), SkillLevel.expert(stars: 5)]
print(levels.sorted())

//: [Next](@next)
