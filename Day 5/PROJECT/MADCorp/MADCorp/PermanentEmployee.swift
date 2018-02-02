//
//  PermanentEmployee.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//Inherit Employee Class
class PermanentEmployee : Employee{
    var VactionWeeks : Int?
    
    //default initializer
    override init() {
        super.init()
        self.VactionWeeks = 0
    }
    
    //Parameterized initializer of subclass
    init(eID: Int, eNM: String, ePay: Double, Weeks: Int) {
        super.init(ID: eID, name: eNM, pay: ePay)
        self.VactionWeeks = Weeks
    }
    //Ovverride keyword for subclass
    override func display() {
        //Use of super keyword
        super.display()
        print("Vaction Weeks: ",VactionWeeks!)
    }
}
