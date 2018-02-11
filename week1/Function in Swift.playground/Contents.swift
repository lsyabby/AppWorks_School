/*
 -----------------
 Function in Swift
 -----------------
*/


/*
 1.Please declare a function named greet with person as argument label and parameter name.
 greet method will return a String.
 For example, if you call the method greet like:
 greet​(person: ​"Celeste"​)
 It will return string: “Hello, Celeste”.
*/
func greet(person: String) -> String {
    return "\("Hello,") \(person)\(".")"
}
greet(person: "Celeste")


/*
 2.Please declare a method named multiply with two argument a , b , and with no return value.
 When you call this method, compiler will print out  the result of a * b.
 Notice that we want to give argument b with a default value 10.
 Please implement this requirement.
*/
func multiply(a: Int, b: Int = 10) {
    print(a * b)
}
multiply(a: 4)
