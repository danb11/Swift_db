//
//  ViewController.swift
//  Measurement
//
//  Created by Danb on 2017. 1. 11..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func ButtonConvert(_ sender: Any) {
        print ("buttonTouched")
        let button = sender as! UIButton
        var textBox2 = (Double)(textBox.text!)
        var sec = Measurement(value: textBox2!, unit: UnitDuration.seconds)
        sec.convert(to:UnitDuration.hours)
        textBox.text = (String)(sec.value)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
