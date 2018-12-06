//
//  InitialViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 05/12/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var someLabel: UILabel!
    @IBOutlet weak var someControler: UISegmentedControl!
    
    @IBAction func someControlerTap(_ sender: UISegmentedControl) {
        var counter = 0
        someLabel.text = "\(counter)"
        counter += 1

    }
    
    @IBOutlet var initialView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
