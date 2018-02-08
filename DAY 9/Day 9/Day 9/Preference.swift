//
//  Preference.swift
//  Day 9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Preference: Vehicle {
    var prefer = false
    var description: String {
        var output = "Do You Prefer \(noofWheels) wheel vehicles from \(name) ?"
        output += prefer ? " ✅" : " ❌"
        return output
    }
}
