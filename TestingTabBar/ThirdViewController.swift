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
        //ama thelw na metakinithei mono mia fora
        //imageMonkey.isUserInteractionEnabled = false
        
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            imageMonkey.center = CGPoint(x:self.imageMonkey.center.x + translation.x,
                                  y:self.imageMonkey.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.imageMonkey)
        if recognizer.state == .ended {
            let velocity = recognizer.velocity(in: self.view)
            let magnitude = sqrt((velocity.x) + (velocity.y*velocity.y))
        }
        
    }
    @IBAction func panGestureRecognizerSecondImage(_ sender: Any) {
        if let recognizer = sender as? UIPanGestureRecognizer {
            let translation = recognizer.translation(in: self.view)
            if let view = recognizer.view {
                view.center = CGPoint(x:view.center.x + translation.x,
                                      y:view.center.y + translation.y)
            }
            recognizer.setTranslation(CGPoint.zero, in: self.view)
        }
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
