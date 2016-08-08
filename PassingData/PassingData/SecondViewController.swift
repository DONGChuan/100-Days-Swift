//
//  SecondViewController.swift
//  PassingData
//
//  Created by Chuan DONG on 16/8/8.
//  Copyright © 2016年 Chuan DONG. All rights reserved.
//

import UIKit

var savedMessage: String?

class SecondViewController: UIViewController {
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = savedMessage
    }
    
    // MARK: - Outlets
    @IBOutlet var messageLabel: UILabel!
    
}
