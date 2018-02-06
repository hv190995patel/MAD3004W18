//
//  ShippingInfo.swift
//  project_MAD
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class ShippinngInfo : Orders {
    
  // var shippingID: Int?
    var shippingType: String?
    var shippingCost: Int?
    var shippingRegionID: Int?
    
  override init() {
    super.init()
       // self.shippingID = 0
        self.shippingType = ""
        self.shippingCost = 0
        self.shippingRegionID = 0
        
    }

    init(sShippingID: Int, sShippingType:String, sShippingCost: Int, sShippingRegionID: Int) {
        super.init()
        
       // self.shippingID = sShippingID
        self.shippingType = sShippingType
        self.shippingCost = sShippingCost
        self.shippingRegionID = sShippingRegionID
       }
   
    func updateShippingInfo() {
        
    }
    
}

