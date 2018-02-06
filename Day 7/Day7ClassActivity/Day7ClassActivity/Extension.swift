//
//  Extension.swift
//  Day7ClassActivity
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//Task For The Day
//Create Extension To Int Type to find out that the number is prime or not


extension Int
{
    var prime: Int
    {
        get
        {
            return self
        }
    }
    
    func primen(_ number: Int) -> Bool
    {
        
       for n in 2..<number
       {
        if(number % n == 0)
        {
            print("Not Prime Number")
            return false
        }
       }
        print("Prime Number")
       return true
    }
}
