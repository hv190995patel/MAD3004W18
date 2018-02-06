//
//  User.swift
//  project_MAD
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class User {
    var userID : String?
    var password : String?
    var loginStatus : String?
    //default init
    init() {
        userID = "1"
        password = ""
        loginStatus = ""
    }
    //parameterized init
    init(ID: String , pass: String , l_status: String) {
        self.userID = ID
        self.password = pass
        self.loginStatus = l_status
    }
    func verifyLogin() -> Bool {
        //verification login
        return true
    }
}

