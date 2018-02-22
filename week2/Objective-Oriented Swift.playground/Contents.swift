/*
 ------------------------
 Objective-Oriented Swift
 ------------------------
*/


/*
 1.
 Declare class  Animal  with property  gender , and method  eat() .
 Data type of gender should be enum Gender as list below.
 Call eat() method will print  I eat everything!
 
 enum Gender {
 case male
 case female
 case undefined
 }
*/
enum Gender {
    case male
    case female
    case undefined
}
class Animal {
    var gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    func eat() {
        print("I eat everything!")
    }
}
Animal(gender: Gender.female).eat()


/*
 2.
 Declare class  Elephant ,  Tiger ,  Horse  inherit from Animal.
 Override the eat method to print what they usually eat.
*/
class Elephant: Animal {
    override func eat() {
        print("I eat grasses.")
    }
}
Elephant.init(gender: Gender.female).eat()

class Tiger: Animal {
    override func eat() {
        print("I eat meats.")
    }
}
Tiger.init(gender: Gender.female).eat()

class Horse: Animal {
    override func eat() {
        print("I eat grasses.")
    }
}
Horse.init(gender: Gender.female).eat()


/*
 3.
 Declare a class  Zoo  with property  weeklyHot  which means the most popular one in the zoo this week.
 The code list below can’t run correctly.
 Please solve the problem.
 Notice that  tiger ,  elephant ,  horse  are instances of class Tiger, Elephant, Horse.
 
 class Zoo {
 var weeklyHot: Tiger?
 init(){}
 }
 let zoo = Zoo( )
 zoo.weeklyHot = tiger
 zoo.weeklyHot = elephant
 zoo.weeklyHot = horse
*/
class Zoo {
    var weeklyHot: Animal?
    
    init(weeklyHot: Animal? = nil) {
        self.weeklyHot = weeklyHot
    }
}

let zoo =  Zoo() 
let tiger = Tiger(gender: .female)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .female)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

