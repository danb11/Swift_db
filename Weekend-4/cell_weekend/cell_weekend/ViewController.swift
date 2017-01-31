//
//  ViewController.swift
//  cell_weekend
//
//  Created by Danb on 2017. 1. 30..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
        tableView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        //row가 몇개냐 (5개)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cell을 만들어서 row만큼 반복
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellA", for: indexPath)
        //queue에서 뭔가를 꺼내는 명령, cell인스턴스를 받아왔으니까 내용만 넣으면 된다.
        
        cell.textLabel?.text = String(indexPath.row)
        
        
        return cell
    }
    
}



