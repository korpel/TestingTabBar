//
//  ViewController.swift
//  DelegateTutorial
//
//  Created by James Rochabrun on 2/7/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit
import UserNotifications

class ClassAVC: UIViewController, ClassBVCDelegate, UIApplicationDelegate {
    func changeBackroundColor(_ color: UIColor?) {
        view.backgroundColor = color
    }
    var someVar :String?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let app = UIApplication.shared
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.badge,.alert,.sound], completionHandler: {(granted,error) in })
        app.registerForRemoteNotifications()
        app.applicationIconBadgeNumber = 3
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if let nav = segue.destination as? UINavigationController, let classB = nav.topViewController as? ClassBVC {
         classB.delegate = self
        }

        
    }
    
    //MARK: step 6 finally use the method of the contract here

    

}

