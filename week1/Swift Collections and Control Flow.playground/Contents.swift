/*
 ----------------------------------
 Swift Collections and Control Flow
 ----------------------------------
*/

// Array //

/*
 1.Please create an empty array with String data type and save it in a variable named myFriends.
*/
var myFriends: [String] = []


/*
 2.I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’.
 Please help me to add their name in to myFriends array.
*/
myFriends += ["Ian", "Bomi", "Kevin"]


/*
 3.I forget to add ‘Michael’ who is one of my best friend.
 Please help me to add Michael to the end of myFriends array.
*/
myFriends.append("Michael")


/*
 4.Because I usually hang out with Kevin, please move Kevin to the begin of the myFriends array.
*/
myFriends.insert("Kevin", at: 0)
myFriends.remove(at: 3)


/*
 5.Use for...each to print all the friend in myFriends array.
*/
for friend in myFriends {
    print(friend)
}


/*
 6.Now I want to know who is at index 5 in the myFriends array.
 Find the answer for me.
 Please explain how do you get your answer and why the answer is it.
*/
// 直接使用 myFriends[5] 查詢，得到 error，表示 index 5 並沒有人。




// Dictionary //

/*
 1.Please create an dictionary with keys of type String, value of type Int, and save it in avariable named myCountryNumber.
*/
var myCountryNumber: [String: Int] = [:]


/*
 2.Please add three keys ‘US’, ‘GB’, ‘JP’ with values 1, 44 , 81.
*/
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81


/*
 3.Remove ‘US’ key-value pair from myCountryNumber dictionary.
*/
myCountryNumber.removeValue(forKey: "US")
myCountryNumber


/*
 4.Change the ‘GB’ value from 44 to 0.
*/
myCountryNumber.updateValue(0, forKey: "GB")
myCountryNumber


/*
 5.Please find a method to get all keys from myCountryNumber and a method to get all values from myCountryNumber.
*/
let allKeys = Array(myCountryNumber.keys)
let allValues = Array(myCountryNumber.values)




// For, While, Repeat //

/*
 1.Please use for-in loop to print the myFriends array and myCountryNumber dictionary (both key and value).
*/
for friend in myFriends {
    print(friend)
}
for myCountry in myCountryNumber {
    print(myCountry)
}


/*
 2.Here is an array:
 let​ lottoNumbers = [​10​, ​9​, ​8​, ​7​, ​6​, ​5​]
 Please use for-in loop and Range to print the last three members in the lottoNumbers array.
*/
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for lottoNumber in 3...5 {
    print(lottoNumbers[lottoNumber])
}
 
 
/*
 3.When use for-in loop, we make the computer do the same thing multiple times.
 But the index in for-in loop is increasing by 1.
 What if we want to decreasing by -1 ?
 What if we want to increasing by 2 ?
 Please use loop to get the result in the console :
 5
 6
 7
 8
 9
 10
 
 10
 8
 6
 Please find a method which can help us achieve these requirements.
*/
for i in 5...10 {
    print(i)
}
for j in stride(from: 10, through: 6, by: -2) {
    print(j)
}


/*
 4.Please use while loop to solve above question.
*/
var i: Int = 0
while i < myFriends.count {
    print(myFriends[i])
    i += 1
}

var j: Int = 0
while j < myCountryNumber.count {
    print(Array(myCountryNumber)[j])
    j += 1
}


var lottoNumber: Int = 3
while lottoNumber < lottoNumbers.count {
    print(lottoNumbers[lottoNumber])
    lottoNumber += 1
}


var num1: Int = 5
while num1 < 11 {
    print(num1)
    num1 += 1
}
var num2: Int = 10
while num2 >= 6 {
    print(num2)
    num2 -= 2
}


/*
 5.Please use repeat-while loop to solve above question (except 4).
 */
var rw_i: Int = 0
repeat {
    print(myFriends[rw_i])
    rw_i += 1
} while rw_i < myFriends.count

var rw_j: Int = 0
repeat {
    print(Array(myCountryNumber)[rw_j])
    rw_j += 1
} while rw_j < myCountryNumber.count


var rw_lottoNumber: Int = 3
repeat {
    print(lottoNumbers[rw_lottoNumber])
    rw_lottoNumber += 1
} while rw_lottoNumber < lottoNumbers.count


var rw_num1: Int = 5
repeat {
    print(rw_num1)
    rw_num1 += 1
} while rw_num1 < 11

var rw_num2: Int = 10
repeat {
    print(rw_num2)
    rw_num2 -= 2
} while rw_num2 >= 6

 
 
 
// If statement //
 
/*
 1.Here is variable isRaining to record the weather.
 Please write a statement that if the weather is raining,
 print “It’s raining, I don’t want to work today.”,
 otherwise print “Althoughit’s sunny, I still don’t want to work today.”
*/
let isRaining = false
if isRaining {
    print("It's raining, I don't want to work today.")
} else {
    print("Althoughit’s sunny, I still don’t want to work today.")
}
 



// Switch //
 
/*
 1.In a company, we usually use number to represent job level.
 Let’s make a sample. Wehave four job levels : Member, Team Leader, Manager, Director.
 We use 1 to present Member, 2 to Team Leader, 3 to Manager, 4 to Director.
 
 Create a variable name jobLevel and assign a number to it.
 If jobLevel number is in our list, print the relative job title name.
 If not, just print “We don't have this job”. Please use switch statement to achieve this requirement.
*/
var jobLevel = 8
switch jobLevel {
case 1: print("Member")
case 2: print("Team Leader")
case 3: print("Manager")
case 4: print("Director")
default: print("We don't have this job.")
}
