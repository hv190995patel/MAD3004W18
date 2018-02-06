//
//  Arithmetic.swift
//  Day7
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Arithmetic: ICalculate{
    //required init(_ n1: Int, _ n2: Int, _ n3: Int) {
    
    var n1: Int
    var n2: Int
    var n3: Int
    
    required init(n1: Int, n2: Int, n3: Int) {
     self.n1 = n1
     self.n2 = n2
     self.n3 = n3
    }
    
    /*
    func calculate()
    {
        let result = self.n1 + self.n2
        print("Result =\(result)")
    }
 */
    
}
