//
//  ViewController.swift
//  TipCalculator
//
//  Created by Chuan DONG on 16/8/7.
//  Copyright © 2016年 Chuan DONG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        tfSubTotal.becomeFirstResponder()
        createToolbar()
    }
    
    // MARK: - Outlets
    @IBOutlet var tfSubTotal: UITextField!
    @IBOutlet var tipSlider: UISlider!
    @IBOutlet var tipPercentLabel: UILabel!
    @IBOutlet var tipAmountLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    
    // MARK: - Interactions
    @IBAction func dragTipSlider(_ sender: UISlider) {
        updateModelAndLabels()
    }
    
    // MARK: - Functions
    func updateModelAndLabels() {
        model.tipPercent = Int(tipSlider.value)
        tipPercentLabel.text = "Tip (\(model.tipPercent)%):"
        tipAmountLabel.text = "$\(model.tipAmountAsCurrency)"
        totalLabel.text = "$\(model.totalAsCurrency)"
    }
    
    func dismissKeyboard() {
        
        // Dismiss keyboard
        tfSubTotal.resignFirstResponder()
        
        if tfSubTotal.text?.characters.count == 0 {
            model.subtotal = 0
            tfSubTotal.text = "$\(model.subtotalAsCurrency)"
            updateModelAndLabels()
        } else {
            model.subtotal = Double(tfSubTotal.text!)!
            tfSubTotal.text = "$\(model.subtotalAsCurrency)"
            updateModelAndLabels()
        }
        
    }
    
    func createToolbar() {
        
        // Create toolbar
        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.sizeToFit()
        
        // Create done button
        let btnDone = UIBarButtonItem(
            title: "Done",
            style: .done,
            target: self,
            action: #selector(ViewController.dismissKeyboard))
        
        // Create flexible space
        let flexibleSpace = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil)
        
        // Array of buttons
        let buttons = [flexibleSpace, btnDone]
        
        // Add buttons to toolbar
        toolbar.setItems(buttons, animated: true)
        // Attach to keyboard
        tfSubTotal.inputAccessoryView = toolbar
    }

}

