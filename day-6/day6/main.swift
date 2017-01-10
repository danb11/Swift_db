//
//  main.swift
//  day6
//
//  Created by Danb on 2017. 1. 10..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

print("Hello, World!")

func testInterest(unitDay:Int) {
    let money = 1000000
    let testInterestA = InterestRate()
    print("money=", money)
    for aaa in stride(from: 365, to: 0, by: -unitDay) {
        print ("day=", aaa , "amount=", testInterestA.calculateAmount(day: aaa, amount : money))
        }
}

testInterest(unitDay: 1)




let arrayPractice = ArrayPractice()
arrayPractice.printArray(array:arrayPractice.tempArray(lines:5))
