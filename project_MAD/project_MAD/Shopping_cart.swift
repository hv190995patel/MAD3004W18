//
//  Shopping_cart.swift
//  project_MAD
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class ShoppingCart 
{
 var cart_ID: Int?
 var product_ID: Int?
 var quantity: Int?
 var date_Added: Int?

    override init() {
        super.init()
        cart_ID = 0
        product_ID = 0
        quantity = 0
        date_Added = 0
    }
  
    init(sCartID:Int, sProductID: Int, sQuantity: Int, sDateAdded:Int) {
     self.cart_ID = sCartID
     self.product_ID = sProductID
     self.quantity = sQuantity
     self.date_Added = sDateAdded
    }

    func addCartItem() {
      
    }
  
    func updateQuantity() {
      
    }

    func viewCardDetails() {
      
    }
 
    func checkOut() {
     
    }
    
}
