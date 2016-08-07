//
//  ViewController.swift
//  TapCounter
//
//  Created by Chuan DONG on 16/8/7.
//  Copyright © 2016年 Chuan DONG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    }
    
    // MARK: - Properties
    @IBOutlet var countLabel: UILabel!
    var count = 0
    
    // MARK: - Interactions
    
    @IBAction func tabButton(_ sender: UIButton) {
        increaseCount()
    }
    
    @IBAction func tabResetButton(_ sender: UIBarButtonItem) {
        count = 0
        countLabel.text = "0"
    }
    
    @IBAction func holdTabButton(_ sender: AnyObject) {
        increaseCount()
    }
    
    // MARK: - Functions
    func increaseCount() -> Void {
        count += 1
        countLabel.text = String(count)
    }
    
    
}

