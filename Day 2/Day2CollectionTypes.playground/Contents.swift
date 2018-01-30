//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Array Declaration
var a = [10,20,30,40,50]
print("a[0] : \(a[0])")
print("a : ",a)


let j1=[10,20]
print("j1 : ",j1)

//Use methods to add values

var b = [Int]();
print("Size opf array b : \(b.count)")
b.append(100)
print("b[0] : \(b[0])")

b.append(1000)
print("b : ",b)

b[0] = 1000
print("b[0] : \(b[0])")

/*
b[2] = 500
print("b : ", b)
print("Size of array b : \(b.count)")
*/

//Assigning the default value
var num1=[Int](repeating: 1,count: 3)
print("num1 array : \(num1)")
var num2=[Int](repeating: 5,count: 3)
print("num2 array : \(num2)")
var numMerge = num1 + num2
print("numMerge array : \(numMerge)")

//Declare to store any data types values

var c = [Any]();
print("Size of array c : \(c.count)")
c.append(100)
c.append("Patel")
c.append(100.23)
print("C array : \(c)")

var x = a[1...3]
for t in x {
    print("x : \(t)")
}

//String array and for-each with(KEY,VALUE)
var shoppingList: [String] = ["Eggs", "Milk"]
for (index, value) in shoppingList.enumerated() {
    print("Item \(index): \(value)")
}
print("The shopping list contains \(shoppingList.count) items")
if shoppingList.isEmpty {
    print("The shopping list is empty")
} else {
    print("The shopping list is not empty")
}
shoppingList.append("Flour")
print("ShoppingList array : \(shoppingList)")

shoppingList += ["Chocolate Spread","Cheese", "Butter"]
print("ShoppingList array : \(shoppingList)")
//shoppingList[4...6] = ["Bananas", "Apples"]
shoppingList.insert("Maple Syrup", at: 0)
let mapleSyrup = shoppingList.remove(at: 2)
let apples = shoppingList.removeLast()
print("shoppingList array : \(shoppingList)")


//SET
//Declaring Set in Swift

var grades: Set<Character> = []
grades.insert("A")
grades.insert("B")
print("grades : \(grades)")
print("grades no of elements",grades.count)

//Declare set with type ANY
//var gradeType:Set <Any> = []

var  favouriteGenres: Set<String> = ["Rock", "Classical", "Hip Hop"]
print("favouriteGenres : \(favouriteGenres)")

print("I have \(favouriteGenres.count) favourite music genres ")
if favouriteGenres.isEmpty {
    print("as far as music goes, I'm jnot picky")
    
}
else {
    print("I have particular music preferences. ")
}
favouriteGenres.insert("Jazz")
    print("favouriteGenres : \(favouriteGenres)")

if let removeGenre = favouriteGenres.remove("rock") {
    print("\(removeGenre)? I'm over it ")
    }
else {
    print("I never much cared for that")
}
print("favouriteGenres : \(favouriteGenres)")
for genre in favouriteGenres.sorted() {
    print("\(genre)")
}

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set =  [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]

print(oddDigits.union(evenDigits).sorted())
print(oddDigits.intersection(evenDigits).sorted())
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

