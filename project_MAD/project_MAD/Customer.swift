//
//  Customer.swift
//  project_MAD
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Customer : User {
        var cust_name : String?
        var address : String?
        var email : String?
        var credit_info : String?
        var shipping_info : String?
 
    override init() {
        super.init()
        self.cust_name = ""
        self.address = ""
        self.email = ""
        self.credit_info = ""
        self.shipping_info = ""
    }
    

    init(cID: String, cPass: String, clstatus: String, cName: String, cAddress: String, cEmail: String, cCreditInfo: String, cShippingInfo: String)
    {
       super.init(ID: cID, pass: cPass, l_status: clstatus)
        self.cust_name = cName
        self.address = cAddress
        self.email = cEmail
        self.credit_info = cCreditInfo
        self.shipping_info = cShippingInfo
    }

    func register() {
    }
 
    func login() {
     
    }
  
    func updateProfile() {
      
    }
    
    func displayData()
    {
        print("Customer ID is : ",userID!)
        print("Customer Name is : ",cust_name!)
        print("Customer Address is : ",address!)
        print("Email is : ",email!)
        print("Credit Info : ",credit_info!)
    }
  
}
