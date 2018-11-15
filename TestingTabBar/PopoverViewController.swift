//
//  PopoverViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 14/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    var something = "asdjklasdjlk"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "popoverSegue"{
            let popoverViewController = segue.destination 
            popoverViewController.modalPresentationStyle = .popover
            popoverViewController.popoverPresentationController?.delegate = self
        }
    }
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
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
