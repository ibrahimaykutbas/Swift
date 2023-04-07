//
//  Musicians.swift
//  MusicianClass
//
//  Created by İbrahim Aykut BAŞ on 8.04.2023.
//

import Foundation

enum MusicianType {
    case Vocalist
    case LeadGuitar
    case RhythmGuitar
    case BassGuitar
    case Drummer
    case Pianist
}

class Musicians{
    
    //Property
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianType
    
    // Obje oluşturulduğu zaman yapılacaklar
    // Initializer (Constructor)
    init(nameInit: String, ageInit: Int, instrumentInit: String, typeInit: MusicianType){
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
    }
    
    func sing(){
        print("Yesterday")
    }
    
    private func test(){
        print("Test")
    }
}
