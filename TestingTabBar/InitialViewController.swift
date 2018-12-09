//
//  InitialViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 05/12/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    @IBAction func datechanged(_ sender: UIDatePicker) {
        print(date.date)
    }
    @IBOutlet weak var date: UIDatePicker!
    var counter = 0
    @IBOutlet weak var someButton: UIButton!
    
    @IBOutlet weak var someLabel: UILabel!
    @IBOutlet weak var someControler: UISegmentedControl!
    
    @IBAction func someControlerTap(_ sender: UISegmentedControl) {
        someLabel.text = "\(counter)"
        counter += 1
        if someControler.selectedSegmentIndex == 0 {
            someButton.setTitle("first", for: .normal)
        } else if someControler.selectedSegmentIndex == 1 {
           someButton.setTitle("deftero", for: .normal)
        }
    }
    @IBAction func someButtonTap(_ sender: UIButton) {
        someControler.sendActions(for: .allEvents)
        print(someControler.titleForSegment(at: 0))
    }
    
    @IBOutlet var initialView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        someControler.sendActions(for: .allEvents)
        
    }
    
}
