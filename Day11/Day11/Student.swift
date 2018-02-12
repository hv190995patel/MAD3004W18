//
//  Student.swift
//  Day11
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

/*class TestStude: student {
    
}
*/

private class student
{
    private var sname: String?
    
    init() {
        self.sname = "Student Name"
    }
    
    func setStudentName(sname: String)
    {
        self.sname = sname
    }
    
    func getStudentName() ->String
    {
        return self.sname!
    }
    
    func display()
    {
        print("I am private method of student class")
    }
    
    fileprivate func display(message: String)
        
    {
        print("Hello \(message)")
    }
}



