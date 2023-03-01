//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by İbrahim Aykut BAŞ on 1.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var user: UILabel!
    
    var isHomer = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        image.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        
        image.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changeImage(){
        if isHomer {
            image.image = UIImage(named: "marge")
            user.text = "Marge"
            isHomer = false
        }else{
            image.image = UIImage(named: "homer")
            user.text = "Homer"
            isHomer = true
        }
    }
}

