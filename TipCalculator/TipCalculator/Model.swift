//
//  Model.swift
//  TipCalculator
//
//  Created by Chuan DONG on 16/8/7.
//  Copyright © 2016年 Chuan DONG. All rights reserved.
//

import UIKit

let model = Model(subtotal: 0, tipPercent: 15)

class Model: NSObject {
    
    var subtotal: Double
    var tipPercent: Int
    
    var tipAmount: Double {
        get {
            // calculate tip - subtotal * tipPercent
            return subtotal * Double(tipPercent)/100
        }
    }
    
    var total: Double {
        get {
            return subtotal + tipAmount
        }
    }
    
    // Variables for labels
    var subtotalAsCurrency: String {
        get {
            return String(format: "%0.2f", subtotal)
        }
    }
    
    var tipAmountAsCurrency: String {
        get {
            return String(format: "%0.2f", tipAmount)
        }
    }
    
    var totalAsCurrency: String {
        get {
            return String(format: "%0.2f", total)
        }
    }
    
    init(subtotal: Double, tipPercent: Int){
        self.subtotal = subtotal
        self.tipPercent = tipPercent
    }
}
