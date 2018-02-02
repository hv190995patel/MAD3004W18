//
//  main.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

//EMPLOYEE//
var emp1 = Employee()
emp1.empID = 101
emp1.empName = "Harsh"
emp1.basicPay = 5000
emp1.display()

var emp3 = Employee()
emp3.display()

var emp4 = Employee(ID: 104, name: "Harsh", pay: 3409.89)
emp4.display()

//EMPLOYEE//

//PERMANENT EMPLOYEE//
var obj2 = PermanentEmployee()
obj2.display()
obj2.empID = 102
obj2.empName = "Harsh"
obj2.basicPay = 3000
obj2.VactionWeeks = 10
obj2.display()

var obj5 = PermanentEmployee()
obj5.display()

var obj6 = PermanentEmployee(eID: 106, eNM: "Harsh", ePay: 1320.53, Weeks: 2)
obj6.display()
//PERMANENT EMPLOYEE//

var obj7 = Payroll(eID: 107, eNM: "Harsh", ePay: 2456.32, weeks: 6)
obj7.display()
