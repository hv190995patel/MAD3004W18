 //: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
 
 print(str)
 

 //Print Multiple Lines
 let strOne =  """
 This is First line
 This is another line
 This is one more line
 Ok Enough of lines
 """
 print(strOne)
 
 //Unicode Sequence
 var mood = ""
 let heart = "\u{1F496}"
 mood = "happy"
 if mood.isEmpty {
    print("Cheer up")
 }
 else {
    print(heart)
 }

 mood += " cheerful joyful"
 print(mood)
  //heart += " Be happy"

 
 //Declare string new way
 var firstname = String()
 firstname = "HARSHP"
 print(firstname)
 
 for i in firstname{
    print(i)
 }

 //Append the Character
 let initial : Character = "H"
 firstname.append(initial)
 print(firstname)
print("firstname is \(firstname) which is \(firstname.count) characters long. ")
 
 var numbers = [1,2,3]
 print(numbers)
 numbers.append(10)
 print(numbers)
 
 ///Use Of INDEXES
 print("start index:",firstname[firstname.startIndex])
 //print("end index:",firtsname[firstname.endIndex])
 print("before end index:", firstname[firstname.index(before: firstname.endIndex)])
 print("after start index:", firstname[firstname.index(after: firstname.startIndex)])
 print("5th character:", firstname[firstname.index(firstname.startIndex,offsetBy: 4)])
 print("3rd from last character:", firstname[firstname.index(firstname.endIndex,offsetBy: -3)])
 
 
 //Calculate count of string and then use for loop to print characters with help of index and also in reverse
 
 var l = firstname.count
  print(l)
  print("Print String")
 for i in stride(from: 0, to: l, by: 1) {
  let d = i
  print(firstname[firstname.index(firstname.startIndex,offsetBy: d)])
  }
  print("Reverse Order")
  for i in stride (from: l, to: 0, by: -1)
  {
    let d = i-l-1
  print(firstname[firstname.index(firstname.endIndex,offsetBy: d)])
  }
 
 //var idx = firstname.index(firstname.startIndex,offsetBy: 3)
 //print("fourth character:",firstname[idx])

 
 var language = "Swift"
 print ("language: " ,language)
 
 language.insert("!",at: language.endIndex)
 print("language : ",language)
 
 language.insert(contentsOf: "Java",at: language.endIndex)
 print("language : ",language)
 
 language.insert(contentsOf:" is nice than ",at: language.index(language.startIndex,offsetBy: 6))
 print("language contentsOf: ",language)
 
 language.remove(at: language.index(before: language.endIndex))
 print("language : ",language)
 
 let range = language.startIndex..<language.endIndex
 language.removeSubrange(range)
 print("language removesubrange: ",language)
 
 let greeting="Happy Holidays!"
 let index=greeting.index(of: " ") ?? greeting.endIndex
 let start = greeting[..<index]
 let newGreet = String(start)
 
 print("Sub String: ",newGreet)
 print("String in uppercase : ",newGreet.uppercased())

 if(newGreet == newGreet.uppercased()) {
    print("Equal")
 }
 else {
    print("Not Equal")
 }
//
 
 //
 var grade : String?
 grade = ""
 let finalGrade = grade ?? "F"
 if(finalGrade.isEmpty) {
    print("Not Graded Yet")
 }
 else {
    print("grade : ",finalGrade)
 }

 
 
