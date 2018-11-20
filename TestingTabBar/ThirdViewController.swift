//
//  ThirdViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 10/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var imageMonkey: UIImageView!
    
    @IBAction func panHandler2(_ recognizer: UIPanGestureRecognizer) {
        
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            imageMonkey.center = CGPoint(x:self.imageMonkey.center.x + translation.x,
                                  y:self.imageMonkey.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.imageMonkey)
        
    }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        print("tapped")
    }
    
    @IBAction func tap2(_ sender: UITapGestureRecognizer) {
        print("tapped view")
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
