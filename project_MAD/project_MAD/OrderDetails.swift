//
//  OrderDetails.swift
//  project_MAD
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class OrderDetails
{
    var orderId: Int?
    var productId: Int?
    var productName: String?
    var quantity: Int?
    var unitCost: Float?
    var subtotal: Float?
    init() {
        self.orderId = 0
        self.productId = 0
        self.productName = ""
        self.quantity = 0
        self.unitCost = 0
        self.subtotal = 0
    }
    
    init(oId: Int , oPId:Int , oPName:String , oQuantity:Int , oUCost:Float , oSubTotal:Float)
    {
        self.orderId = oId
        self.productId = oPId
        self.productName = oPName
        self.quantity = oQuantity
        self.unitCost = oUCost
        self.subtotal = oSubTotal
    }

    func calcPrice() {
    
    }   
}


