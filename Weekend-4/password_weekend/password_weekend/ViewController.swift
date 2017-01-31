//
//  ViewController.swift
//  password_weekend
//
//  Created by Danb on 2017. 1. 29..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var colorbox: UILabel!
    
    @IBOutlet weak var noticetext: UILabel!
    
    var passwordA = ""
    
    
    
    func passwordValidator(password:String) -> Int {
        
       var decimalSet = (CharacterSet.decimalDigits, 0)
       var letterSet = (CharacterSet.letters, 0)
       var puntuationSet = (CharacterSet.punctuationCharacters, 0)
        
        for charater in password.unicodeScalars {
            if decimalSet.0.contains(charater){
                decimalSet.1 += 1
            }
            else if letterSet.0.contains(charater) {
                letterSet.1 += 1
            }
            else if puntuationSet.0.contains(charater) {
                puntuationSet.1 += 1
            }
        }
            var total = puntuationSet.1 + letterSet.1 + decimalSet.1
            
        if total < 5 {
            return 0
        }
        else if decimalSet.1 >= 1 && letterSet.1 >= 1 && puntuationSet.1 >= 1 && total >= 8 {
            return 5
        }
            else if decimalSet.1 >= 1 && letterSet.1 >= 1 && total >= 8 {
            return 4
        }
            else if letterSet.1 >= 1 && decimalSet.1 + puntuationSet.1 == 0 {
                return 2
        }
            else if decimalSet.1 >= 1 && letterSet.1 + puntuationSet.1 == 0 {
                return 1
        }
            else {
                return 3
        }
    }
    
    func checkLevel(valid : Int) -> (word : String, color : UIColor) {
        var word = ""
        var color = UIColor.darkGray
        switch valid {
        case 0 :
            word = "암호는 5자 이상입니다."
            color = UIColor.brown
        case 1 :
            word = "아주 약한 암호입니다."
            color = UIColor.red
        case 2 :
            word = "약한 암호입니다."
            color = UIColor.orange
        case 3 :
            word = "보통 암호입니다."
            color = UIColor.yellow
        case 4 :
            word = "강한 암호입니다."
            color = UIColor.blue
        case 5 :
            word = "아주 강한 암호입니다."
            color = UIColor.green
        default:
            word = "암호를 입력해주세요."
        }
        return (word,color)
    }

    @IBAction func okbutton(_ sender: Any) {
        passwordA = textfield.text!
        let result = checkLevel(valid: passwordValidator(password: passwordA))
        self.colorbox.backgroundColor = result.color
        self.noticetext.text = result.word
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

