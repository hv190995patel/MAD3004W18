//
//  main.swift
//  Day 10
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//throw limitIncreaseError.ineligible

//var obj1 = RequestLimitIncrease()
//try obj1.increaseLimit(accountNo: "S1100")


var processRequest = RequestLimitIncrease()

/*
do {
    try processRequest.increaseLimit(accountNo: "S1200")
}catch limitIncreaseError.insuffucientBalance {
    print("You Dont Have sufficient Balance:")
}catch limitIncreaseError.ineligible {
    print("You Dont Have Accout With Us")
}catch limitIncreaseError.noSavingAccount {
    print("limit increase is only available to saving Accounts.")
} catch {
    print("Unexpected Error")
}
*/

do {
    try processRequest.increaseLimit(accountNo: "S1200")
}catch is limitIncreaseError {
    print("Something wrong with your account:")
}
