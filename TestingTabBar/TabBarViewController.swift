//
//  TabViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 10/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        selectedViewController = viewControllers![0]
        }
    
    func chooseTheInitialViewController()
    {
        var coutner = 1
        var test : Int {
            get {
                return 1
            }
        }
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

