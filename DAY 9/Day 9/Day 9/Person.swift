//
//  Person.swift
//  Day 9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

//FIRST NAME, LAST NAME,ADDRESS
import Foundation

class Person {
    let Fname: String
    let Lname: String
    let address: String
    
    init?(Fname: String, Lname: String, address: String) {
        
        if Fname.isEmpty,Lname.isEmpty,address.isEmpty {
            return nil
        }
        self.Fname = Fname
        self.Lname = Lname
        self.address = address
    }
}
