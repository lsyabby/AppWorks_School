/*
 -----------------------------------
 Enumerations and Optionals in Swift
 -----------------------------------
*/


/*
 1.
 There are several gasoline types, 92, 95, 98, and diesel.
 We can use enum to model them.
 • Please create enum named  Gasoline  to model gasoline.
 • Every kind of gasoline has price.
   Please create a method named  getPrice  in Gasoline enum.
   The method will return difference price depend on difference gasoline.
*/
enum Gasoline: Double {
    case gasoline92
    case gasoline95
    case gasoline98
    case diesel
    
    func getPrice() -> Double {
        switch self {
        case .gasoline92: return 0.53
        case .gasoline95: return 0.86
        case .gasoline98: return 1.03
        default: return 0.22
        }
    }
}
let priceOf92 = Gasoline.gasoline92
priceOf92.getPrice()


/*
 2.
 Optional is a very special data type in swift.
 Take  var a: Int? = 10  for example, the value of a will be  nil  or  Int .
 You should learn how to deal with optional data type.
 • People would like to have pets, but not everyone could have one.
   Declare a class  Pet with  name  property and a class  People  with  pet  property which will store a Pet instance or nil .
   Please try to figure out what data type is suitable for these properties in Pet and People.
 • Please create a People instance and use  guard let  to unwrap the  pet  property.
 • Please create another People instance and use  if let  to unwrap the  pet  property.
*/
class Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class People {
    var pet: Pet?
}

let abby = People()
let dog = Pet(name: "Peggy")
abby.pet = dog

func abbyHasPet(pet_abby: People) -> String {
    guard let pet_abby = abby.pet?.name else {
        return "Abby doesn't have any pet."
    }
    return "Abby has a pet. Named \(pet_abby)."
}
abbyHasPet(pet_abby: abby)


let jim = People()

func jimHasPet(pet_jim: People) -> String {
    if let pet_jim = jim.pet?.name {
        return "Jim has a pet. Named \(pet_jim)."
    } else {
        return "Jim doesn't have any pet."
    }
}
jimHasPet(pet_jim: jim)
