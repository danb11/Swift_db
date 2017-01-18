//
//  ViewController.swift
//  MyCandle
//
//  Created by Danb on 2017. 1. 11..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var candleOff: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("viewDidLoad")
    }

    
    
    @IBAction func buttonTouched(_ sender: Any) {
        print ("buttonTouched")
        let button = sender as! UIButton
        
        button.backgroundColor = UIColor.white
        titleLabel.textColor = UIColor.yellow
        titleLabel.text="ON"
        candleOff.image = UIImage(named: "candleOn.jpeg")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print ("didReceiveMemoryWarning")
    }
}
