//
//  InitialViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 05/12/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    var counter = 0

    @IBOutlet weak var someLabel: UILabel!
    @IBOutlet weak var someControler: UISegmentedControl!
    
    @IBAction func someControlerTap(_ sender: UISegmentedControl) {
        someLabel.text = "\(counter)"
        counter += 1
    }
    @IBAction func someButtonTap(_ sender: UIButton) {
        someControler.sendActions(for: .allEvents)
    }
    
    @IBOutlet var initialView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
