//
//  zoo.swift
//  swiftZoo
//
//  Created by David  Bowen on 10/13/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Zoo {
    
    func addAnimal(animal:animal) {
        animalDictionary[animal.animalKey] = animal.animalName
        print("Animal Added")
    }
    
    func addPeople(people:people) {
        peopleDictionary[people.peopleKey] = people.peopleName
        print("Person Added")
    }
    
    func borrowBook(animal:animal) {
        print("You removed an animal")
        animalDictionary.removeValue(forKey: animal.animalKey)
    }
    
    func returnBook(animal:animal) {
        print("You returned an animal")
        animalDictionary[animal.animalKey] = animal.animalName
    }
    
    func allAnimals() {
        print("There are \(animalDictionary.count) animals in the Zoo")
        for i in animalDictionary.values {
            print(i)
        }
    }
    
    func allPeople() {
        print("There are \(peopleDictionary.count) people in the Zoo")
        for i in peopleDictionary.values {
            print(i)
        }
    }
}
