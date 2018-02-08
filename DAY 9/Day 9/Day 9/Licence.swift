//
//  Licence.swift
//  Day 9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//Age
//Location
//IF Age < 16 no object should be crated

class Licence: Person {
    let age: Int
    let location: String
    
    init?(Fname: String, Lname: String, address: String, age: Int, location: String) {
        if age < 16 {
            return nil
        }
        else {
            self.age = age
            self.location = location
        }
        super.init(Fname: Fname, Lname: Lname, address: address)
    }
}
