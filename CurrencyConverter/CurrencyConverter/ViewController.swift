//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by İbrahim Aykut BAŞ on 4.02.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TRYLabel: UILabel!
    @IBOutlet weak var CADLabel: UILabel!
    @IBOutlet weak var GBPLabel: UILabel!
    @IBOutlet weak var USDLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRates(_ sender: Any) {
        let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/CurrencyData/main/currency.json")
        let session = URLSession.shared
        
        let task = session.dataTask(with: url!) { data, response, error in
            if error != nil {
                let alert = UIAlertController(title: "Error ", message: error?.localizedDescription , preferredStyle: .alert)
                let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            } else {
                if data != nil {
                    do {
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String, Any>
                        
                        DispatchQueue.main.async {
                            if let rates = jsonResponse["rates"] as? [String : Any] {
                                
                                if let TRY = rates["TRY"] as? Double {
                                    self.TRYLabel.text = "TRY: \(TRY)"
                                }
                                
                                if let CAD = rates["CAD"] as? Double {
                                    self.CADLabel.text = "CAD: \(CAD)"
                                }
                                
                                if let GBP = rates["GBP"] as? Double {
                                    self.GBPLabel.text = "GBP: \(GBP)"
                                }
                                
                                if let USD = rates["USD"] as? Double {
                                    self.USDLabel.text = "USD \(USD)"
                                }
                            }
                                
                        }
                    } catch {
                        print("Error")
                    }
                }
            }
        }
        
        task.resume()
    }
    
}
 
