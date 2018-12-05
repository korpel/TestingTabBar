//
//  InitialViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 05/12/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet var initialView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonTouched(_ sender: UIButton) {
        let alert = UIAlertController(title: "just a title", message: "just a message", preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)
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
