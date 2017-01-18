//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func makeMagicSquare(row:Int) -> Array<Array<Int>> {
    var rSQ = Array<Array<Int>>()
    
    for i in 0...row-1 {
        //Array (repeating: 0, count: 3)
        var returnSQ = Array<Int>()
        var mySQ = Array<Int>()
        for j in 0...row-1 {
            mySQ.append(0)
            mySQ = [[0][0]]
        }
        }

    return rSQ
}


makeMagicSquare(row: 3)