//
//  main.swift
//  Day 9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//PRODUCT
let laptop = Product(name: "Laptop")

if let machine = laptop {
    print("Product Name is \(machine.name)")
}

let anonymusMachine = Product(name: "")

if anonymusMachine == nil {
    print("The Anonymous machine could not be initialized")
}

//CART ITEM
if let oneProjector = CartItem(name: "Projector", quantity: 0) {
    print("Cart Contains \(oneProjector.quantity) \(oneProjector.name)")
}
else {
    print("Unable to initialize cart item")
}

//LICENSE

if let Lic = Licence(Fname: "HARSH", Lname: "PATEL", address: "TORONTO", age: 10, location: "North York") {
    print("Licence Information: \(Lic.Fname) \(Lic.Lname) \(Lic.address) \(Lic.age) \(Lic.location)")
}
else{
    print("Not Eligible To apply For License")
}


//Manufacturer
var objManu = Manufacturer(name: "AUDI")
print("\(objManu.name)")


//Vehicle
//No Parameter
let noObject = Vehicle()

//One Parameter
let alienVehicle = Vehicle(name: "BMW")

//Both Parameters
let bicycle = Vehicle(name: "BMW", noofWheels: 2)

let preference = Preference()
print(preference.description)


//Structure TimeTable

struct TimesTable {
    let multiplier: Int
    
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("Six Times Three is \(threeTimesTable[6])")


//Structure Matrix
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool
    {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index Out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
print("\(matrix.grid)")
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2
print("\(matrix.grid)")
