//
//  SecondViewController.swift
//  0121
//
//  Created by Danb on 2017. 1. 21..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func picker(_ sender: Any) {
        let pickercontroller = UIImagePickerController()
        pickercontroller.sourceType = .photoLibrary
        pickercontroller.delegate = self
        
        present(pickercontroller, animated: true, completion: nil)
    
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let imgV = info[UIImagePickerControllerOriginalImage] {
            imageView.image = imgV as! UIImage
        }
        else {
            print()
        }
        picker.dismiss(animated: true, completion: nil)
    }
    }





