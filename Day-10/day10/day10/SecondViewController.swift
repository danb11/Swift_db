//
//  SecondViewController.swift
//  day10
//
//  Created by Danb on 2017. 1. 17..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func picker(_ sender: Any) {
        let pickerColtroller = UIImagePickerController()
        
        pickerColtroller.sourceType = .photoLibrary
        pickerColtroller.delegate = self
        //누구한테 알려줄까 = self 나한테
        
        present(pickerColtroller, animated: true, completion: nil)
        //다음화면 다음 뷰컨트롤러를 띄우는거
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] {
            imageView.image = image as? UIImage
            //
        }
        else {
            
        }
        picker.dismiss(animated: true, completion: nil)
    }

}




