//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*

var tupleCard:(key:String, val: String) = ("","")
var secondArray : [String] = [String]()

for i in 2...14 {
    if i == 11 {
        secondArray.append("A")
    }
    else if i == 12 {
        secondArray.append("J")
    }
    else if i == 13 {
        secondArray.append("Q")
    }
    else if i == 14 {
        secondArray.append("K")
    }
    else {
        secondArray.append(String(i))
}
}


tupleCard.val = secondArray



var cardSet : Set<Int>=[]
while (cardSet.count < 52) {
    cardSet.insert(Int(arc4random_uniform(52)))

}
 */



var cardSet : Set<Int>=[]
var aitem = ["d","s","c","h"]
var bitem = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
cardSet.insert(Int(arc4random_uniform(52)))




for item in cardSet {
    
    
        print(item)
    
}


