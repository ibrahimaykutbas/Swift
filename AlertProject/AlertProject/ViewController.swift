//
//  ViewController.swift
//  AlertProject
//
//  Created by İbrahim Aykut BAŞ on 1.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var passwordAgainInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSave(_ sender: Any) {
        if userNameInput.text == "" {
            makeAlert(title: "Error", message: "Username not found!")
        }else if passwordInput.text == ""{
            makeAlert(title: "Error", message: "Password not found!")
        }else if passwordInput.text != passwordAgainInput.text {
            makeAlert(title: "Error", message: "Password do not match!")
        }else {
            makeAlert(title: "Success", message: "User OK")
        }
    }
    
    func makeAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

