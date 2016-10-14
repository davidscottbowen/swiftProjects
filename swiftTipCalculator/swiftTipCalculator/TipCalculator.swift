//
//  TipCalculator.swift
//  swiftTipCalculator
//
//  Created by David  Bowen on 10/14/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

//Tip Calculator

class TipCalculator {
    
    var foodCost: Double
    var taxPercentage: Double
    var tipAmount: Double
    var party: Int
    
    init(foodCost: Double, taxPercentage: Double, tipAmount: Double, party: Int){
        self.foodCost = foodCost
        self.taxPercentage = taxPercentage
        self.tipAmount = tipAmount
        self.party = party
    }
    
    
    func output() {
        print("Meal Subtotal $\(foodCost)")
        print("Meal Tax $\(foodCost * taxPercentage)")
        print("Meal Tip $\(tipAmount)")
        let grandTotal = (foodCost + (foodCost * taxPercentage) + tipAmount)
        let grandSplit = grandTotal / Double(party)
        print("Meal Grand Total $\(grandTotal)")
        print("Meal Grand Total for each person $\(grandSplit)")
        
    }
}



