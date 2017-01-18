////: Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
//
//
//var someInts = [Int]()
//someInts.append(3)
//someInts = []
//
//print (someInts)
//
//var threeDoubles = Array(repeating: 0.0, count: 3)
//print(threeDoubles + [2.5, 3.5])
//
//print(threeDoubles)
//
//var shoppingList: [String] = ["Eggs","Milk"]
//shoppingList += ["Baking Powder"]
//shoppingList.insert("Maple Syrup", at: 0)
//shoppingList.remove(at: 1)
//
//print(shoppingList)
//
//
//for item in shoppingList {
//    print(item)
//}
//
//
//struct ArrayPractice{
//    func printArray(array : Array<Array<Int>>) {
//        for innerArray in array {
//            for item in innerArray {
//                print ( item, terminator:" ")
//            }
//            print()
//        }
//    }
//    func tempArray(lines:Int) -> Array<Array<Int>> {
//        var resultArray = Array<Array<Int>>()
//        for _ in 1...lines {
//            var tempArray = Array<Int>()
//            for xL in 1...lines {
//                tempArray.append(xL)
//            }
//            resultArray.append(tempArray)
//        }
//        return resultArray
//    }
//    func fillArray (lines:Int) -> Array<Array<Int>> {
//        let result = Array<Array<Int>>()
//        for A in 1...lines {
//            for B in 1...A {
//                let B = (A-1)*5+B
//                print (B, terminator:" ")
//
//            }
//            print ()
//        }
//        return result
//        }
//
//    }
//
//
//
//
//var arrayPractice = ArrayPractice()
//arrayPractice.printArray(array:arrayPractice.tempArray(lines:5))
//
//print()
//
//
//var myArray = ArrayPractice()
//myArray.printArray(array:myArray.fillArray(lines: 5))
//
//
//
//print ()

struct barray{
func setBoolArray(row: Int) -> Array<Array<Bool>> {
            var resultArray = Array<Array<Bool>>()
    
            var count = 0
            var end = row-1
            for i in 0...end{
                var test = end-count
                count+=1//count=count+1
                
                var emptyArray = Array<Bool>()
                for j in 0...end
                {
                        if(j >= test)
                        {
                            emptyArray.append(true)
                        }
                        else{
                                emptyArray.append(false)
                            }
                }
                resultArray.append(emptyArray)
                }
            return resultArray
            }
    func printArray(array:Array<Array<Bool>>,newChar:Character){
        var count = array.count
        for i in 0...count-1 {
            for j in 0...count-1 {
                if (array[i][j] == false) {
                    print(" ",terminator:" ")
                    }
                else {
                    print(newChar,terminator:" ")
                }

            }
            print()

        }
}
}

let thomas=barray()
let thomas2=thomas.setBoolArray(row: 7)

thomas.printArray(array: thomas2, newChar:"#")

print()

func makeMagicSquare(row:Int) -> Array<Array<Int>> {
    var rSQ = Array<Array<Int>>()
    
    for i in 0...row-1 {
        //Array (repeating: 0, count: 3)
        var returnSQ = Array<Int>()
        for j in 0...row-1 {
                returnSQ.append(0)
            }
        rSQ.append(returnSQ)
        rSQ[0][0]
    }
//    var mySQ = Array<Int>()
//    mySQ = [i][j]

    
    return rSQ
}



makeMagicSquare(row: 3)


//  print(i, terminator:" ")
//var ijArray = [i][j]
// if [(i-1)%3,(j-1%3)]{
//
//returnSQ[i]

