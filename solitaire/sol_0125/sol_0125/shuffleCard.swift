//
//  shuffleCard.swift
//  sol_0125
//
//  Created by Danb on 2017. 1. 25..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation






struct solitairDeck {
    var cardSet : Set<Int>=[]
    var randomCardArray = [String]()
    var cardArray = [String]()
    mutating func shuffleCard () {
        while (cardSet.count < 52) {
            cardSet.insert(Int(arc4random_uniform(52)))
            }
        
        let aitem = ["d","s","c","h"]
        let bitem = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
        
        for a in aitem {
            for b in bitem {
                let card = "\(a)\(b)"
                print("card == \(card)")
                cardArray.append(card)
            }
        }
        
        print("cardArray == \(cardArray)")
        
        for cardSetIndex in cardSet {
            print("cardSetIndex == \(cardSetIndex)")
            
            let randomCard = cardArray[cardSetIndex]
            print("randomCard == \(randomCard)")
            
            randomCardArray.append(randomCard)
            
        }
        
        print("randomCardArray == \(randomCardArray)")
        }
    
}


