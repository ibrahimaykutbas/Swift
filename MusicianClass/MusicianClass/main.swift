//
//  main.swift
//  MusicianClass
//
//  Created by İbrahim Aykut BAŞ on 8.04.2023.
//

import Foundation

let musician = Musicians(nameInit: "Paul McCartney", ageInit: 80, instrumentInit: "Bass Guitar", typeInit: .Vocalist)

let musician1 = SuperMusician(nameInit: "John Lennon", ageInit: 83, instrumentInit: "Rhythm Guitar", typeInit: .Vocalist)

print(musician.sing())
