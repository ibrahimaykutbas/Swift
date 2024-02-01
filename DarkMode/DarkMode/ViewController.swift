//
//  ViewController.swift
//  DarkMode
//
//  Created by İbrahim Aykut BAŞ on 1.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light // Uygulamanın görünüm modu belirleniyor.
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) { // Uygulama içindeyken görünüm modunu takip etmek için.
        let userInterfaceStyle = traitCollection.userInterfaceStyle // Kullanıcının görünüm modunu öğrenmek için.
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }
}

