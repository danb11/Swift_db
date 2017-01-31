//
//  BlueViewController.swift
//  day10
//
//  Created by Danb on 2017. 1. 18..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    var titleString : String = ""
    //var dataDictionary : [String:Any] = [:]
    
    
    @IBOutlet weak var titleLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //override에는 이걸 꼭 써줘야함
        titleLable.text = titleString
        // titleLable.text = dataDictionary["title"] as? String
    }
    
    @IBAction func close(_ sender: Any) {
        //self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
   /*
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
     //이거도 괜찮은데 위에꺼가 더 명확함
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
