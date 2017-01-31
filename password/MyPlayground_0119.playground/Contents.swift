//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var passwordA = "abc1234"
var passwordB = "1"
/*
// var counting = passwordA.characters.count

var passwordArray = Array(passwordA.characters)
print( passwordArray)


//if let passwordA = passwordArray as? [String] {
//    print (passwordA.characters)
//}

// var passwordB: String.CharacterView = passwordA

let flowers = "Flowers 💐"
//for c in flowers {
//    print(c)
//}

let capitalA = "A"
print(capitalA.characters.count)
// Prints "1"
let letters = CharacterSet.letters

let range = passwordB.rangeOfCharacter(from: letters)

if let test = range {
    print ("letter")
}
else {
    print("number")
}

for ch in str.characters {
    print(ch)
}
 // string.CharacterView : 하나씩 뜯어서 보여주는 스트럭트, 캐릭터일 뿐, string은 아님


//unicode 로 

let alphaSet = CharacterSet.alphanumerics
// 알파벳이랑 숫자를 포함하는 집합
let decimalSet = CharacterSet.decimalDigits
let letterSet = CharacterSet.letters
// 집합으로 만들어져 있지만 안에 값을 볼 수 없음,

alphaSet.contains("A")
// 대신 alphaSet이 제공하는 함수

let a = "A"
// "A" 는 값, string이 아님

for ch in str.unicodeScalars {
    if decimalSet.contains(ch) {
        print(ch)
    }
    else {
    }
}


*/

let alphaSet = CharacterSet.alphanumerics
// 알파벳이랑 숫자를 포함하는 집합
let decimalSet = CharacterSet.decimalDigits
let letterSet = CharacterSet.letters
// 집합으로 만들어져 있지만 안에 값을 볼 수 없음,


for  pswA in (passwordA.unicodeScalars) {
    if decimalSet.contains(pswA){
       // print(pswA)
    }
    else if alphaSet.contains(pswA){
       print(pswA)
    }
   // else if letterSet.contains(pswA){

}



