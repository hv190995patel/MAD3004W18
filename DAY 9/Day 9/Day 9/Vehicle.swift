//
//  Vehicle.swift
//  Day 9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Vehicle: Manufacturer {
    var noofWheels: Int
    
    init(name: String, noofWheels: Int) {
        self.noofWheels = noofWheels
        super.init(name: name)
    }
    //Override convinience init(name: String) {
    override convenience init(name: String) {
        self.init(name: name, noofWheels: 0)
    }
}
