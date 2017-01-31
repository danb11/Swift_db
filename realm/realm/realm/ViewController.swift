//
//  ViewController.swift
//  realm
//
//  Created by Danb on 2017. 1. 26..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let realm = try! Realm()
        //이 램에 데이터를 쓰고 넣고 할 수 있음
        let myClass = diary(value: [Date(),"램램램데헷램"])
        
        
        try! realm.write {
            realm.add(myClass)
        }
        
        let classes = realm.objects (diary.self)
        print(classes)
      //  print(classes.count)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

