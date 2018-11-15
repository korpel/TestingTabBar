//
//  PresentedViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 13/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class PresentedViewController: UIViewController {

    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue)
    {
        print("You learned to use unwindSegue")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
