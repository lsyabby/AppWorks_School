/*
 -----------------
 Protocol in Swift
 -----------------
*/


/*
 1.
 Declare a struct  Person  with a  name  property type String, a protocol name  PoliceMan .
 There is only one method  arrestCriminals  with no argument and return void in the protocol.
*/
struct Person {
    var name: String
}
protocol PoliceMan {
    func arrestCriminals()
}


/*
 2.
 Make struct  Person  confirm to  PoliceMan  protocol.
*/
struct Person666: PoliceMan {
    var name: String
    func arrestCriminals() {
    }
}


/*
 3.
 Declare a protocol  ToolMan  with a method  fixComputer , no argument and return void.
*/
protocol ToolMan {
    func fixComputer()
}


/*
 4.
 Add a property  toolMan  to struct Person with data type  ToolMan .
*/
struct Person777: PoliceMan, ToolMan {
    var name: String
    var toolMan: ToolMan
    
    func arrestCriminals() {
    }
    func fixComputer() {
    }
}


/*
 5.
 Declare a struct named  Engineer  conform to  ToolMan  protocol.
*/
struct Engineer: ToolMan {
    func fixComputer() {
    }
}


/*
 6.
 Create a Person instance with name Steven.
 Please create the relative data you need to declare this instance.
*/
let engineer = Engineer()
let person = Person777(name: "Steven", toolMan: engineer)



