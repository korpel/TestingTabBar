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
    @IBAction func secondButtonTouched(_ sender: UIButton) {
        let alert = UIAlertController(title: "just a title", message: "just a message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "first", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "second", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func thirdButtonTouched(_ sender: UIButton) {
        let alert = UIAlertController(title: "just a title", message: "just a message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "first", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "second", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "third", style: .destructive, handler: nil))
         alert.addAction(UIAlertAction(title: "fourth", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func fourthButtonTouched(_ sender: UIButton) {
    }
    @IBAction func fifthButtonTouched(_ sender: UIButton) {
    }
    @IBAction func sixthButtonTouched(_ sender: UIButton) {
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
