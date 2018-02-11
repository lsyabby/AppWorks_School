/*
 -----------
 Swift Basic
 -----------
*/


/*
 1.In swift, we define a variable through the syntax below.
 ​var​ x: ​Int​ = ​10
 That’s practice this syntax :
 When mentioning about calculating circle’s area, we use the formula:  2 * radius * PI  to get area.
 Now, please define a variable  PI  and assign value to it.
 You can refer to the syntax above.
 But think clearly about using var or let and which data type you should choose.
*/
var PI: Double = 3.1415926


/*
 2.Create two constants x and y of type Int and assign with any value.
 Please calculate the average of x and y and store the result in a constant named average.
*/
let x: Int = 2018
let y: Int = 27
let average = (x + y)/2


/*
 3.Following with Q2, now we want to save the average in the record system, but the system doesn’t accept 65 but 65.0.
 ●Please solve this problem so that we can put the average in the record system.
 ●Think about the difference between ( 10 / 3 ) and ( 10 / 3.0 ).
*/
let X: Double = 2018 //change type Int to Double
let Y: Double = 27
let Average = (X + Y)/2

10/3 // 只會保留整數的部分。
10/3.0 // 會連小數的部分一起保留。


/*
 4.Swift is a very powerful language.
 It can infer the data type for you ( Type inference ).
 But we still need to know the basic theory.
 Please mark the data type in the following statement:
 Ex: var​ x = ​10​​ => var​ x: ​Int​ = ​10
 var​ flag = ​true
 var inputString = ​"Hello world."
 let​ bitsInBite = ​8
 let​ averageScore = ​86.8
*/
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let aberageScore: Double = 86.8


/*
 5. Compound assignment operator is very useful when programming.
 Please create salaryas 22000, and use addition assignment operator to add 28000 to salary, and it will be 50000 after this process.
*/
var salaryas = 22000
salaryas += 28000


/*
 6.You should notice that  ‘=’  has difference meaning in programming.
 In real world,  ‘=’ means equal.
 In programming,  ‘=’  means assign.
 You simply put the right hand side data into left hand side variable or constant.
 Now please find the Equality operator in swift, and write a statement to figure out  0  is equal to  false  or not.
*/
let f: Bool = false
f.hashValue // 結果為 0，表示 false 為 0。


/*
 7.Declare two constants and the value are 10 and 3, please calculate the remainder and save the result in a constant remain.
*/
let firstValue = 10
let secondValue = 3
let remain = 10 % 3

