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
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstSegue" {
            let Blue : BlueViewController = segue.destination as! BlueViewController
            Blue.titleString = "Hey, Hello"
            // Blue.titleString = ["title":"딕셔너리사전"]
        }
    }
    */
    @IBAction func nextButton(_ sender: Any) {
        let BlueVC : BlueViewController = storyboard?.instantiateViewController(withIdentifier: "BlueVC") as! BlueViewController
        
        BlueVC.titleString = "Hey, Hey"
        if let navigation = navigationController {
            navigation.pushViewController(BlueVC, animated: true)
        }
       // present(BlueVC, animated: true, completion: nil)
        //액션으로 BlueVC와 연결
    }
}




