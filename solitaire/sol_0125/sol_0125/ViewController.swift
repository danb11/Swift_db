//
//  ViewController.swift
//  sol_0125
//
//  Created by Danb on 2017. 1. 25..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
        // Do any additional setup after loading the view, typically from a nib.
   
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        var XP = 26-140
        var YP = 100
        var cards : solitairDeck = solitairDeck()
        cards.shuffleCard()
        print(cards.cardSet)

        var count = 0
                for j in 0...6 {
                XP += 140
                YP = 100
                    for i in 0...j {
                        YP += 40
                        print(count)

                        let randomCardName = cards.randomCardArray[count]
                        
                        let zeroCard = UIImageView(frame: CGRect(x: XP, y: YP, width: 130, height: 150))
                        zeroCard.image = UIImage(named: randomCardName)
                        view.addSubview(zeroCard)
                        count += 1
                        
                }
                    
        }
        
        let card = cards.cardSet.index(cards.cardSet.startIndex, offsetBy: 29)
        print(card)
        YP = 500
        XP = 26-24
        for index in 0...23 {
            XP += 24
            print(count)

            let randomCardName = cards.randomCardArray[count]

                let secondLine = UIImageView(frame: CGRect(x: XP, y: YP, width: 130, height: 150))
                secondLine.image = UIImage(named: randomCardName)
                view.addSubview(secondLine)
            count += 1

        }
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

