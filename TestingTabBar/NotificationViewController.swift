//
//  NotificationViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 27/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    @IBAction func buttonPressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: .didReceiveData, object: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(onDidReceiveData(_:)), name:.didReceiveData, object: nil)
        /*
         NotificationCenter.default.addObserver(self, selector: [selector], name: .didCompleteTask, object: nil)
         */
    }
    
    @objc func onDidReceiveData(_ notification:Notification) {
        // Do something now
    }
    


}

extension Notification.Name {
    static let didReceiveData = Notification.Name("didReceiveData")
    static let didCompleteTask = Notification.Name("didCompleteTask")
    static let completedLengthyDownload = Notification.Name("completedLengthyDownload")
}
