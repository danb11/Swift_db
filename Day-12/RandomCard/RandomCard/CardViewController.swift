//
//  CardViewController.swift
//  RandomCard
//
//  Created by Danb on 2017. 1. 19..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

/*enum CardFace : UInt32 {
    case diamond,heart,spade,clover
    
}
*/
//var arrayS = Array<CardFace>()

class CardViewController: UIViewController {
    
    var Tuple:(key: String, val: String) = ("","")
    
    @IBOutlet weak var shapeLabel: UILabel!
  
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var cardImageView: UIImageView!
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        print(Tuple.key, Tuple.val)
        shapeLabel.text = Tuple.key
        numberLabel.text = Tuple.val
        cardImageView.image = UIImage(named: Tuple.key + Tuple.val)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  /*
 override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        cardImageView.image = UIImage(named: "c2.png")
        shapeLabel.text = String(describing: result.0)
        numberLabel.text = String(describing: result.1)
        
    }
    
*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
