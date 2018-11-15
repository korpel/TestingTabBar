//
//  FirstViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 10/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    @IBOutlet var initialView: UIView!
    @IBOutlet weak var simpleButton: UIButton!
    @IBOutlet weak var feauturedTabBarItem: UITabBarItem!
    @IBOutlet weak var popoverButton: UIButton!
    
    public var counter = 1
    
    
    @IBAction func popoverButton(_ sender: UIButton) {
        let controller = ShowablePopoverViewController()
        controller.modalPresentationStyle = .popover
        let popController = controller.popoverPresentationController
        popController?.permittedArrowDirections = .any
        popController?.delegate = self
        popController?.sourceRect = (self.popoverButton?.bounds)!
        popController?.sourceView = self.popoverButton
        self.present(controller, animated: true, completion: nil)
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        initialView.backgroundColor = getRandomColor()
        simpleButton.setTitleColor(getRandomColor(), for: .normal)
        simpleButton.setTitle(String(counter), for: .normal)
        counter*=2
        self.navigationController?.tabBarItem.badgeValue = String(counter)
        
    }
    
    func getRandomColor() -> UIColor {
        //Generate between 0 to 1
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialView.backgroundColor = UIColor.green
        simpleButton.setTitleColor(UIColor.white, for: .normal)
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
