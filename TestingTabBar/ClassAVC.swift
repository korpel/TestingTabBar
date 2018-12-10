//
//  ViewController.swift
//  DelegateTutorial
//
//  Created by James Rochabrun on 2/7/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

class ClassAVC: UIViewController, ClassBVCDelegate {
    func changeBackroundColor(_ color: UIColor?) {
        view.backgroundColor = color
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let nav = segue.destination as? UINavigationController, let classB = nav.topViewController as? ClassBVC {
         classB.delegate = self
        }
        
    }
    
    //MARK: step 6 finally use the method of the contract here

    

}

