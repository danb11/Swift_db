//
//  PhotoViewController.swift
//  0121
//
//  Created by Danb on 2017. 1. 22..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
  
    var rdIMG : [String:Any] = [:]


    @IBOutlet weak var imgV: UIImageView!
    
    @IBOutlet weak var titleV: UILabel!
    
    @IBOutlet weak var contentV: UILabel!
    
    @IBOutlet weak var commentV: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        // super클래스(UIViewController)에 들어있는 viewWillLayoutSubview를 불러줘
        imgV.image = UIImage(named:(rdIMG ["image"] as? String)!)
        titleV.text = rdIMG ["title"] as? String
        contentV.text = rdIMG ["content"] as? String
        let commentArray = rdIMG ["comments"] as! Array<[String:Any]>
        commentV.text = "\(commentArray.count)"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
