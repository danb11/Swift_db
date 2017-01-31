//
//  photoViewController.swift
//  day10
//
//  Created by Danb on 2017. 1. 18..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class photoViewController: UIViewController {

    var rdIMG : [String:Any] = [:]

    @IBOutlet weak var imageVC: UIImageView!

    @IBOutlet weak var titleA: UILabel!
    
    @IBOutlet weak var contents: UILabel!
    
    @IBOutlet weak var comment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //titleA.text
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        // super클래스(UIViewController)에 들어있는 viewWillLayoutSubview를 불러줘
        imageVC.image = UIImage(named:(rdIMG ["image"] as? String)!)
        titleA.text = rdIMG ["title"] as? String
        contents.text = rdIMG ["content"] as? String
        let commentArray = rdIMG ["comments"] as? Array<[String:Any]>
        comment.text = "\(commentArray?.count)"
        
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
