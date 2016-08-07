//
//  ViewController.swift
//  GetDateAndTime
//
//  Created by Chuan DONG on 16/8/7.
//  Copyright © 2016年 Chuan DONG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }
    
    // MARK: - Outlets
    @IBOutlet var dayAndTimeLabel: UILabel!
    
    // MARK: - Interactions
    @IBAction func tapRefreshButton(_ sender: UIButton) {
        refresh()
    }
    
    func refresh() {
        dayAndTimeLabel.text = DateFormatter.localizedString(
            from: Date(),
            dateStyle: .medium,
            timeStyle: .medium)

    }

}

