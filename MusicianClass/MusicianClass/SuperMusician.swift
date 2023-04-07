//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by İbrahim Aykut BAŞ on 8.04.2023.
//

import Foundation

class SuperMusician: Musicians {
    func sing2(){
        print("Help")
    }
    
    override func sing() {
        super.sing()
        print("We can work it out")
    }
}
