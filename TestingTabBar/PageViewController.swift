//
//  PageViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 25/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController /*,UIPageViewControllerDelegate, UIPageViewControllerDataSource*/ {
    
    fileprivate lazy var pages : [UIViewController] = {
        return [
            self.getViewController(withIdentifier: "firstViewControllerID"),
            self.getViewController(withIdentifier: "secondViewControllerID"),
            self.getViewController(withIdentifier: "thirdViewControllerID")
            
        ]
    }()
    fileprivate func getViewController(withIdentifier identifier: String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
    /*
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
 */
    

    override func viewDidLoad() {
        super.viewDidLoad()

       // dataSource = self
       // delegate = self
        if let firstVC = pages.first {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
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
