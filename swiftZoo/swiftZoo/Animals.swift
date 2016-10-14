//
//  Animals.swift
//  swiftZoo
//
//  Created by David  Bowen on 10/13/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

var animalDictionary: [Int:String] = [:]

class animal {
    var animalKey: Int
    var animalName: String
    //    var checkedOut: Bool = true
    
    init(animalKey: Int, animalName: String){
        self.animalKey = animalKey
        self.animalName = animalName
    }
}
