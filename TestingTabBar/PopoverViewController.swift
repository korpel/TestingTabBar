//
//  PopoverViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 14/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    @IBAction func popoverButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let optionVc = storyboard.instantiateViewController(withIdentifier: "popoverid")
        optionVc.modalPresentationStyle = .popover
        optionVc.popoverPresentationController?.delegate = self
        self.present(optionVc, animated: true, completion: nil)
    }
    
    var something = "asdjklasdjlk"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
