//
//  Orders.swift
//  project_MAD
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Orders
{
    var orderID: Int?
    var dateCreated: String?
    var dateShipped: String?
    var customerName: String?
    var customerID: String?
    var status: String?
    var shippingID: Int?
  
    init() {
        self.orderID = 0
        self.dateCreated = ""
        self.dateShipped = ""
        self.customerName = ""
        self.customerID = ""
        self.status = ""
        self.shippingID = 0
    }
    
    init(oOrderID:Int,oDateCreated:String,oDateShipped:String, oCustomerName: String, oCustomerID:String, oStatus: String, oShippingID: Int) {
        self.orderID = oOrderID
        self.dateCreated = oDateCreated
        self.dateShipped = oDateShipped
        self.customerName = oCustomerName
        self.customerID = oCustomerID
        self.status = oStatus
        self.shippingID = oShippingID        
    }
   
    func placeOrder() {
  
    }
    
}
