//
//  FeedCell.swift
//  InstagramClone
//
//  Created by İbrahim Aykut BAŞ on 6.02.2024.
//

import UIKit
import FirebaseFirestore

class FeedCell: UITableViewCell {
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var documentLabelID: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func onPressLike(_ sender: Any) {
        let fireStoreDatabase = Firestore.firestore()
        
        if let likeCount = Int(likeLabel.text!) {
            let likeStore = ["likes": likeCount + 1] as [String: Any]
            
            fireStoreDatabase.collection("Posts").document(documentLabelID.text!).setData(likeStore, merge: true)
        }
        
    }
}
