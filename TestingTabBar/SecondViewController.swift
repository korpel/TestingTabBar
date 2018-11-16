//
//  SecondViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 10/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var initialView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.title = "name"
        initialView.backgroundColor = UIColor.black
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarItem.badgeValue = "tadam"
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
