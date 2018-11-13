//
//  FirstViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 10/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var initialView: UIView!
    @IBOutlet weak var simpleButton: UIButton!
    @IBOutlet weak var feauturedTabBarItem: UITabBarItem!
    
    public var counter = 1
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let backColor = initialView.backgroundColor = getRandomColor()
        let buttonColor = simpleButton.setTitleColor(getRandomColor(), for: .normal)
        if backColor == buttonColor{
            buttonColor
        }
        simpleButton.setTitle(String(counter), for: .normal)
        counter*=2
        self.navigationController?.tabBarItem.badgeValue = String(counter)
        self.navigationController?.isNavigationBarHidden = true
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
        simpleButton.setTitleColor(getRandomColor(), for: .normal)
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
