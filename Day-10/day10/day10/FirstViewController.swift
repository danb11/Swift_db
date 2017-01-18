//
//  FirstViewController.swift
//  day10
//
//  Created by Danb on 2017. 1. 17..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstSegue" {
            let Blue : BlueViewController = segue.destination as! BlueViewController
            Blue.titleString = "Hey, Hello"
        }
    }


}

