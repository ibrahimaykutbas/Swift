//
//  ViewController.swift
//  FaceRecognition
//
//  Created by İbrahim Aykut BAŞ on 1.02.2024.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onPressSignIn(_ sender: Any) {
        let authContext = LAContext()
        
        var error: NSError?
        
        
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Is it you?") { succes, error in
                if succes == true{
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "toSecondVC", sender: nil)
                    }
                    
                } else {
                    DispatchQueue.main.async {
                        self.resultLabel.text = "Error!"
                    }
                    
                }
            }
        }
    }
    
}

