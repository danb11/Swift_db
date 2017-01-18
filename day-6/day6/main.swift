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
        let testInterest1 = InterestRate()
        print("money=", money)
        for aaa in stride(from: 365, to: 0, by: -unitDay) {
        print ("day=", aaa , "amount=", testInterest1.calculateAmount(day: aaa, amount : money))
        }
}

//testInterest(unitDay: 1)



let arrayPractice = ArrayPractice()
arrayPractice.printArray(array:arrayPractice.tempArray(lines:5))


var myArray = ArrayPractice()
myArray.printArray(array:myArray.fillArray(lines: 5))




let fileA = FileManager()
var result : [String] = []
do {
    result = try fileA.contentsOfDirectory(atPath: "/Library/Desktop Pictures")
}
catch let error as NSError {
    print (error)
}


//print (result)



let origin = CGPoint(x: 0, y: 0)
var other = origin
other.x += 10
var another = origin
another.y += 5

func swapPoint(pointA : inout CGPoint, pointB : inout CGPoint) {
    let temp = pointA
    pointA = pointB
    pointB = temp
}

swapPoint(pointA: &other, pointB: &another)
print(other, another)
