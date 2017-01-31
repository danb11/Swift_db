//
//  ViewController.swift
//  RandomCard
//
//  Created by Danb on 2017. 1. 19..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   enum CardFace : UInt32 {
        case D, H, S, C
    //let cardConnect : CardViewController = storybo
        }
    
    var secondArray : [String] = [String]()
    
    @IBAction func randomBT(_ sender: Any) {
        let cardViewController : CardViewController = storyboard!.instantiateViewController(withIdentifier: "cardVC") as! CardViewController
        let randomFace = CardFace(rawValue: arc4random_uniform(4))
    
    
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
        
        cardViewController.Tuple.key = String(describing: randomFace!)
        cardViewController.Tuple.val = secondArray[Int(arc4random_uniform(14))]
        
        
        if let navigation = navigationController {
            navigation.pushViewController(cardViewController, animated: true)
        }
        //다음화면으로 넘겨주는 push 명령
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


