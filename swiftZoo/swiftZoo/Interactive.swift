//
//  Interactive.swift
//  swiftZoo
//
//  Created by David  Bowen on 10/13/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Interactive {
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()
    
    func go() {
        
        while !done {
            
            io.writeMessage("     *** WELCOME TO THE ZOO ***")
            io.writeMessage("Enter h for help/options or q to quit")
            
            currentInput = io.getInput()
            
            switch currentInput {
            case "a":
                addAnimal()
            case "p":
                addPeople()
            case "c":
                removeAnimal()
            case "i":
                returnAnimal()
            case "la":
                listAnimals()
            case "lp":
                listPeople()
            case "h":
                help()
            case "q":
                done = true
            default:
                print("The input is: \(currentInput)")
                
            }
        }
        print("Exiting...")
        
        return
    }
    
    func addAnimal() {
        
        print("*** ADD ANIMAL TO ZOO ***")
        
        io.writeMessage("Animal ID")
        currentInput = io.getInput()
        
        guard let animalKey = Int(currentInput) else {
            io.writeMessage("Your input was not an Int.")
            return
        }
        
        io.writeMessage("Animal Name")
        currentInput = io.getInput()
        
        guard let animalName = String(currentInput) else {
            io.writeMessage("Your input was not an Int.")
            return
        }
        
        let myAnimal = animal(animalKey: animalKey, animalName: animalName)
        
        let zoo = Zoo()
        
        zoo.addAnimal(animal:myAnimal)
    }
    
    func addPeople(){
        print("*** ADD PEOPLE TO ZOO ***")
        
        io.writeMessage("People ID")
        currentInput = io.getInput()
        
        guard let peopleKey = Int(currentInput) else {
            io.writeMessage("Your input was not an Int.")
            return
        }
        
        io.writeMessage("People Name")
        currentInput = io.getInput()
        
        guard let peopleName = String(currentInput) else {
            io.writeMessage("Your input was not a String.")
            return
        }
        
        let myPeople = people(peopleKey: peopleKey, peopleName: peopleName)
        
        let zoo = Zoo()
        
        zoo.addPeople(people:myPeople)
    }
    
    
    
    
    func returnAnimal(){
        print("*** Return an Animal ***")
    }
    
    func removeAnimal(){
        print("*** Remove an Animal ***")
    }
    
    func listAnimals(){
        print("*** List all Animals ***")
        let zoo = Zoo()
        zoo.allAnimals()
    }
    
    func listPeople(){
        print("*** List all People ***")
        let zoo = Zoo()
        zoo.allPeople()
    }
    
    func help(){
        io.writeMessage("*** HELP MENU***")
        io.writeMessage("Enter a to add an animal to the Zoo")
        io.writeMessage("Enter c to remove an animal")
        io.writeMessage("Enter i to return an animal")
        io.writeMessage("Enter p to add a person to the Zoo")
        io.writeMessage("Enter la to list all animals currently in Zoo")
        io.writeMessage("Enter lp to list all people currently in Zoo")
    }
}
