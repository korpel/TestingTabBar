//
//  ThirdViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 10/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBAction func panHandler(_ sender: UIPanGestureRecognizer) {
        if let translate = sender.view {
            
        }
    }
    
    @IBOutlet var initialView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        initialView.backgroundColor = UIColor.red
    }
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
