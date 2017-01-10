//
//  StruchPractice.swift
//  day6
//
//  Created by Danb on 2017. 1. 10..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

struct InterestRate {
    func getInterestRate(byDay : Int)->Double {
        if (byDay <= 90) {
            return 0.005
        }
        if (byDay <= 180) {
            return 0.01
        }
        if (byDay <= 364) {
            return 0.02
        }
        else {
            return 0.056
        }
    }
    
    func calculateAmount (day:Int, amount:Int)->Double {
        let total = Double(amount) + Double(amount) * getInterestRate(byDay: day)
        return Double(total)
    }
}


