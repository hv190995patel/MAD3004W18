//
//  Payroll.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Payroll : PermanentEmployee{
    var netPay: Double{
        
        get{
            let vw = self.VactionWeeks!
            if vw > 5{
                return self.basicPay! - 100
            }
            else{
                return self.basicPay!
            }
        }
    }
    override init(){
        super.init()
        //self.netPay = 0
    }
    init(eID: Int, eNM: String, ePay: Double, weeks: Int) {
        super.init(eID: eID, eNM: eNM, ePay: ePay, Weeks: weeks)
        //self.netPay = 0
    }
    
    override func display() {
        super.display()
        //self.calculate()
        print("NetPay: ",self.netPay)
    }
    /*
     func calculate() {
     var vw = self.VactionWeeks
     if vw > 5{
     self.netPay! = self.basicPay! - 100
     }
     else{
     self.netPay! = self.basicPay!
     }
     }
     */
}
