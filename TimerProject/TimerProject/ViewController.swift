//
//  ViewController.swift
//  TimerProject
//
//  Created by İbrahim Aykut BAŞ on 1.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var time: UILabel!
    
    var timer = Timer()
    
    var counter = 10
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        time.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
    }

    @objc func timerFunction(){
        time.text = "Time: \(counter)"
        
        if counter == 0 {
            timer.invalidate()
            time.text = "Time's Over"
        }
        
        counter -= 1
        
    }
    
    @IBAction func onPress(_ sender: Any) {
        print("Tapped")
    }
    
}

