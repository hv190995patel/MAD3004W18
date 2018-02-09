//
//  Bonus.swift
//  Day 10
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//ERROR HANDLING
enum limitIncreaseError: Error {
    case insuffucientBalance(balanceNeeded: Double)
    case noSavingAccount
    case ineligible
}

struct requestsFromAccount{
    var type: String
    var balance: Double
    var reqStatus: String
}
