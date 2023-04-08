//
//  ViewController.swift
//  SimpsonBook
//
//  Created by İbrahim Aykut BAŞ on 8.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var simpsons = [Simpson]()
    
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Simpson Objects
        let homer = Simpson(nameInit: "Homer Simpson", jobInit: "Nuclear Safety", imageInit: UIImage(named: "homer")!)
        let marge = Simpson(nameInit: "Marge Simpson", jobInit: "Housewife", imageInit: UIImage(named: "marge")!)
        let bart = Simpson(nameInit: "Bart Simpson", jobInit: "Student", imageInit: UIImage(named: "bart")!)
        let lisa = Simpson(nameInit: "Lisa Simpson", jobInit: "Student", imageInit: UIImage(named: "lisa")!)
        let maggie = Simpson(nameInit: "Maggie Simpson", jobInit: "Baby", imageInit: UIImage(named: "maggie")!)
        
        simpsons.append(homer)
        simpsons.append(marge)
        simpsons.append(bart)
        simpsons.append(lisa)
        simpsons.append(maggie)
    }

    // numberOf
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsons.count
    }
    
    // cellFor
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        var content = cell.defaultContentConfiguration()
        content.text = simpsons[indexPath.row].name
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    // didSelect
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    // prepare
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
           
        }
    }

}

