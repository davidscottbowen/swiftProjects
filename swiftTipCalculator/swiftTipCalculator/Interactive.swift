//
//  Interactive.swift
//  swiftTipCalculatorGold
//
//  Created by David  Bowen on 10/11/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Interactive {
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()
    
    func go() {
        
        while !done {
            
            //Ask user for input right here.
            io.writeMessage("\nEnter c to calculate or q to quit")
            currentInput = io.getInput()
            
            if currentInput == "q" {
                done = true
                
            } else if currentInput == "c" {
                calculateTip()
            } else {
                print("The input is: \(currentInput)")
            }
            
        }
        print("Exiting...")
        
        return
    }
    
    func calculateTip() {
        
        print("*** ENTER BILL INPUT ***")
        var foodCost: Double
        var taxPercentage: Double
        var tipAmount: Double
        var party: Int
        
        // Ask how much the bill is
        io.writeMessage("\nWhat is bill subtotal?")
        currentInput = io.getInput()
        
        foodCost = (currentInput as NSString).doubleValue
        
        print("You entered \(foodCost) bill subtotal")
        
        // Ask how much the tax percent is
        
        io.writeMessage("\nWhat is tax percent?")
        currentInput = io.getInput()
        
        taxPercentage = (currentInput as NSString).doubleValue
        
        print("You entered \(taxPercentage) tax percent")
        
        // Ask how much the tip amount is
        
        io.writeMessage("\nWhat is tip amount?")
        currentInput = io.getInput()
        
        tipAmount = (currentInput as NSString).doubleValue
        
        print("You entered \(tipAmount) for the tip")
        
        io.writeMessage("\nHow many people spliting the bill?")
        currentInput = io.getInput()
        
        party = (currentInput as NSString).integerValue
        
        print("You entered \(party) for peope spliting bill")
        
        let myTipCalculator = TipCalculator(foodCost: foodCost, taxPercentage: taxPercentage, tipAmount: tipAmount, party: party)
        
        myTipCalculator.output()
        
        
    }
    
    
}
