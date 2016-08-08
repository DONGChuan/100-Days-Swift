//
//  ViewController.swift
//  PassingData
//
//  Created by Chuan DONG on 16/8/8.
//  Copyright © 2016年 Chuan DONG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        firstViewTextField.becomeFirstResponder()
    }
    
    // MARK: - Outlets
    @IBOutlet var firstViewTextField: UITextView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        savedMessage = firstViewTextField.text
    }
}

