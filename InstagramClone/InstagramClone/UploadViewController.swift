//
//  UploadViewController.swift
//  InstagramClone
//
//  Created by İbrahim Aykut BAŞ on 4.02.2024.
//

import UIKit
import FirebaseStorage
import FirebaseFirestore
import FirebaseAuth

class UploadViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate   {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var commentText: UITextField!
    @IBOutlet weak var uploadImage: UIImageView!
    @IBOutlet weak var uploadLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.isHidden = true
        uploadLabel.isHidden = true

        uploadImage.isUserInteractionEnabled = true
        let uploadRecognize = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        uploadImage.addGestureRecognizer(uploadRecognize)
    }
    
    @objc func chooseImage (){
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        image.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true) {
            self.image.isHidden = false
            self.uploadLabel.isHidden = false
        }
    }
    
    func makeAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK" , style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func uploadButton(_ sender: Any) {
        let storage = Storage.storage()
        let storageReference = storage.reference()
        
        let mediaFolder = storageReference.child("media")
        
        if let data = image.image?.jpegData(compressionQuality: 0.5) {
            let uuid = UUID().uuidString
            
            let imageReference = mediaFolder.child("\(uuid).jpg")
            imageReference.putData(data, metadata: nil) { metadata, error in
                if error != nil  {
                    self.makeAlert(title: "Error!", message:  error?.localizedDescription ?? "Error")
                } else {
                    imageReference.downloadURL {  url, error in
                        if error == nil {
                            let imageUrl = url?.absoluteString
                            
                            let firestoreDatabase = Firestore.firestore()
                            var firestoreReference:  DocumentReference? = nil
                            
                            let firestorePost = ["imageUrl": imageUrl!, "postedBy": Auth.auth().currentUser!.email!, "postComment": self.commentText.text!, "date": FieldValue.serverTimestamp(), "likes": 0] as [String: Any]
                            
                            firestoreReference = firestoreDatabase.collection("Posts").addDocument(data: firestorePost, completion: { error in
                                if error != nil {
                                    self.makeAlert(title: "Error!", message: error?.localizedDescription ?? "Error")
                                } else {
                                    self.commentText.text = ""
                                    self.image.isHidden = true
                                    self.uploadLabel.isHidden = true
                                    self.tabBarController?.selectedIndex = 0
                                }
                            })
                        }
                    }
                }
            }
        }
        
    }
    
    
}
