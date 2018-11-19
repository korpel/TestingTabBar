//
//  ThirdViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 10/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet var initialView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    func viewWillAppear(_ animated: Bool) {
        initialView.backgroundColor = UIColor.red
    }
    func panHandler(recognizer: UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.initialView)
        if let view = recognizer.view {
            
        }
        
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
