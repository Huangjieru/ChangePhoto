//
//  ViewController.swift
//  ChangePhoto
//
//  Created by jr on 2022/7/30.
//

import UIKit

class ViewController: UIViewController {

    var stitchPicture = true // 宣告是stitch的圖片時
    
    @IBOutlet weak var stitchImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changePhoto(_ sender: Any){
        
        stitchPicture.toggle()  //運用toggle()方法讓圖片切換狀態。沒有此方法點選圖片是不會切換的！
        
        if stitchPicture == true{
            stitchImageView.image = UIImage(named: "stitch") //如果是stitch，畫面顯示stitch的圖片。如何顯示圖片，在運用image屬性時就有提示，可以用UIImage?這個型別。其中可以使用named為參數名稱的方法，輸入字串去找到名為stitch的這張圖片
            
        }else{
            stitchImageView.image = UIImage(named: "Patrick Star") //如果不是stitch，就用UIImage(named:String)方法讓畫面顯示想要的圖
        }
    }
}

