//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by İbrahim Aykut BAŞ on 7.04.2023.
//

import UIKit

class DetailsVC: UIViewController {

    
    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
    }

}
