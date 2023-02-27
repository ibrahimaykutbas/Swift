//
//  SecondViewController.swift
//  SegueApp
//
//  Created by İbrahim Aykut BAŞ on 27.02.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = name
    }
    

}
