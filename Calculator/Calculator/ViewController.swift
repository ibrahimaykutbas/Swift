//
//  ViewController.swift
//  Calculator
//
//  Created by İbrahim Aykut BAŞ on 26.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var first: UITextField!
    @IBOutlet weak var second: UITextField!
    
    var resultValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func add(_ sender: Any) {
        result.isHidden = false
        
        let errorMessage = "Hata! Lütfen bir sayı girin!"
        
        if let firstValue = Int(first.text!){
            if let secondValue = Int(second.text!){
                resultValue = firstValue + secondValue
                result.text = String(resultValue)
            }else{
                result.text = errorMessage
            }
        }else{
            result.text = errorMessage
        }
    }
    
    @IBAction func subtraction(_ sender: Any) {
        result.isHidden = false
        
        let errorMessage = "Hata! Lütfen bir sayı girin!"
        
        if let firstValue = Int(first.text!){
            if let secondValue = Int(second.text!){
                resultValue = firstValue - secondValue
                result.text = String(resultValue)
            }else{
                result.text = errorMessage
            }
        }else{
            result.text = errorMessage
        }
    }
    
    @IBAction func multiplication(_ sender: Any) {
        result.isHidden = false
        
        let errorMessage = "Hata! Lütfen bir sayı girin!"
        
        if let firstValue = Int(first.text!){
            if let secondValue = Int(second.text!){
                resultValue = firstValue * secondValue
                result.text = String(resultValue)
            }else{
                result.text = errorMessage
            }
        }else{
            result.text = errorMessage
        }
    }
    
    @IBAction func division(_ sender: Any) {
        result.isHidden = false
        
        let errorMessage = "Hata! Lütfen bir sayı girin!"
        
        if let firstValue = Int(first.text!){
            if let secondValue = Int(second.text!){
                resultValue = firstValue / secondValue
                result.text = String(resultValue)
            }else{
                result.text = errorMessage
            }
        }else{
            result.text = errorMessage
        }
    }
    
    
}

