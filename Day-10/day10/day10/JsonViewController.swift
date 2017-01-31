//
//  ThirdViewController.swift
//  day10
//
//  Created by Danb on 2017. 1. 17..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation


struct MyModel {
    var jsonArray : Array<[String:Any]> = [] //

    mutating func MakeJsonArray(jsonDataA : Data) {
        let json = try? JSONSerialization.jsonObject(with: jsonDataA, options: [])
        if let array = json as? Array<[String:Any]> {
            jsonArray = array
        }
        
    }
    
    func item (atIndex:Int) ->[String:Any] {
        return jsonArray[atIndex]
    }
}


  
