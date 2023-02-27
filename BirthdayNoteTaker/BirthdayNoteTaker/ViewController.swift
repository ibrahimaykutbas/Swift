//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by İbrahim Aykut BAŞ on 27.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var birthdayInput: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let name = storedName as? String{
            nameLabel.text = "Name: \(name)"
        }
        
        if let birthday = storedBirthday as? String{
            birthdayLabel.text = "Birthday: \(birthday)"
        }
        
    }

    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(nameInput.text, forKey: "name")
        UserDefaults.standard.set(birthdayInput.text, forKey: "birthday")
        
        nameLabel.text = "Name: \(nameInput.text!)"
        birthdayLabel.text = "Birthday: \(birthdayInput.text!)"
        
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name:"
        }
        
        if (storedBirthday as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday:"
        }
    }
}

