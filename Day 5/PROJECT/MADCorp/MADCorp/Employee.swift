//
//  Employee.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Employee{
    var empID: Int?
    var empName: String?
    var basicPay: Double?
    
    //Initializers
    //init() keyword for declaring constructor
    init(){
        self.empID = 0
        self.empName = ""
        self.basicPay=0.0
    }
    //Parameterized Intialiazer
    init(ID: Int, name: String, pay: Double){
        self.empID = ID
        self.empName = name
        self.basicPay = pay
    }
    func display() {
        print("Employee ID: ",self.empID!)
        print("Employee Name: ",self.empName!)
        print("Employee Basic Pay: ",self.basicPay!)
    }
    //deinitializer
    deinit{
        print("Employee Object deinitialized")
    }
}
