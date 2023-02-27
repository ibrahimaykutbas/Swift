//
//  ViewController.swift
//  SegueApp
//
//  Created by İbrahim Aykut BAŞ on 27.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var nameInput: UITextField!
    
    var name = ""
    
    override func viewDidLoad() {
        // Sadece app ilk açıldığında tetiklenir.
        super.viewDidLoad()
       
        print("viewDidLoad function called.")
        
    }

    // Çalışma sıra bu şekilde
    // viewWillAppear -> viewDidAppear -> viewWillDisappear -> viewDidDisappear
    override func viewWillAppear(_ animated: Bool) {
        // Ekran açılmadan tetiklenir.
        print("viewWillAppear function called.")
        nameInput.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Ekran açıldıktan sonra tetiklenir.
        print("viewDidDisappear function called.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        // Ekrandan ayrılmadan hemen önce tetiklenir.
        print("viewWillDisappear function called.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        // Ekrandan ayrıldıktan sonra tetiklenir.
        print("viewDidDisappear function called.")
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        name = nameInput.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.name = name
        }
    }
    
}

