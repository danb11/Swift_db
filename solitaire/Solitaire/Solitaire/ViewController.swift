//
//  ViewController.swift
//  Solitaire
//
//  Created by Danb on 2017. 1. 23..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var XP = 26
        var YP = 100
        // Do any additional setup after loading the view, typically from a nib.
    
       // var subview = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
            //코드로 뷰를 만들 때는 프레임 , CGRect가 좌표&사이즈
            //화면의 모든 객체는 UI뷰에서 받아서 (버튼 기타 등등)
       // view.addSubview(subview)
        //self 는 viewcontroller 무조건 빈 화면을 하나 가지고 있다. self.view로
        //UIKIT카탈로그 참고
      //  subview.backgroundColor=UIColor.blue
      //  view.backgroundColor=UIColor.black
        /*
        let imageView = UIImageView(frame: CGRect(x: 26, y: 100, width: 130, height: 150))
            imageView.image = UIImage(named: "sA")
            //파일불러주는 클래스 UIImage
            view.addSubview(imageView)
    }
 */
        let imageView = UIImageView(frame: CGRect(x: XP, y: YP, width: 130, height: 150))
        imageView.image = UIImage(named: "sA")
        
        func viewWiilAppear() {
        //var Card = CGRect(x: 26, y: 100, width: 130, height: 150)
       // let X = CGPoint(x: 26, y: 100)
            
           // let cardImage : UIImageView = UIImageView(image:imageView)
            //cardImage.frame = CGRect(x: x, y: y, width: width, height:height)
            //인스탄스시킨 image파일이름
        
        
        
        //for i in 0...6 {
       // }
            
   
  //  }
        }
    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
}



/*
var Card = UIImageView(frame: CGRect(x: 26, y: 100, width: 130, height: 150))
var X = Card.frame.maxX
var Y = Card.frame.maxY
for i in 0...6 {
    X = X+140
    print(Card)
    Card.image = UIImage(named: "sA")
    view.addSubview(Card)
}
print(viewWiilAppear())
view.backgroundColor=UIColor.gray

*/
