//
//  ViewController.swift
//  Password
//
//  Created by Ji yeon Park on 2017. 1. 19..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UITextField: UITextField!
    
    @IBOutlet weak var UIView: UIView!
    
    @IBOutlet weak var UILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func passwordValidator(password : String) -> Int {
        var passwordA = UITextField.text
        var counting = passwordA?.characters.count
        let max = counting
       //var passwordCheck = Array(passwordA!.characters)
        // ["a", "a", "a", "a", "1", "2", "3", "4"]
        for pawString in (passwordA?.characters)!{
            
        }
        var order : Int = 0
        let letterSet = CharacterSet.letters
        let alphaSet = CharacterSet.alphanumerics
        let decimalSet = CharacterSet.decimalDigits

        func passwordCheckF() {
        for  pswA in (passwordA?.unicodeScalars)! {
            if decimalSet.contains(pswA){
            print(pswA)
            }
            else if alphaSet.contains(pswA){
            print(pswA)
            }
            //else if letterSet.contains(number){
                
            }
        }
    }
}

