//
//  People.swift
//  swiftZoo
//
//  Created by David  Bowen on 10/13/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

var peopleDictionary: [Int:String] = [:]

class people {
    var peopleKey: Int
    var peopleName: String
    
    init(peopleKey: Int, peopleName: String){
        self.peopleKey = peopleKey
        self.peopleName = peopleName
    }
}
