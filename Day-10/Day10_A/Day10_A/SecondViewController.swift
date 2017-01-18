//
//  SecondViewController.swift
//  Day10_A
//
//  Created by Danb on 2017. 1. 17..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var image: UIImageView!
    
    @IBAction func picker(_ sender: Any) {
        let imagepicker = UIImagePickerController()
        imagepicker.sourceType = .photoLibrary
        imagepicker.delegate = self
    
        present(imagepicker, animated: true, completion: nil)
        
        //func imagepicker (_picker)
        
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

