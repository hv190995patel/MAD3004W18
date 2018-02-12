//
//  main.swift
//  Day11
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
/*
var objStud = student()
objStud.display()
//
*/

var p1 = PartTime()
//p1.setStudentName(name: "HP")

class T: ExtendPartTime {
    override init()
    {
        super.init()
        print("display T")
    }
}
var t1 = T()
