//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func shuffleCards() {
    //var cardArray = Array<Array<String>>()
   // var StackArray = Array<String>()
    let RandomArray = Array(1...53)
    var RandomCard = Int(arc4random_uniform(UInt32(RandomArray.count)))
}



/*

func tempArray(lines:Int) -> Array<Array<Int>> {
    var resultArray = Array<Array<Int>>()
    var A = 0
    for i in 0...lines {
        var tempArray = Array<Int>()
        for xLoop in 0...i {
            tempArray.append(A)
            A += 1

        }
        resultArray.append(tempArray)
    }
    return resultArray
}

print(tempArray(lines: 7))
*/

func tempArray(lines:Int) -> Array<Array<Int>> {
    var resultArray = Array<Array<Int>>()
    var A = 0
    for i in 0...lines {
        var tempArray = Array<Int>()
        for xLoop in 0...i {
            tempArray.append(A)
            A += 1
            
        }
        resultArray.append(tempArray)
    }
    return resultArray
}

print(tempArray(lines: 7))






/*
func viewWiilAppear(){
    let imageView = UIImageView(frame: CGRect(x: 26, y: 100, width: 130, height: 150))
    var X = (x:26)
    var Y = (y:100)
    for i in 0...6 {
    }
    
}
*/