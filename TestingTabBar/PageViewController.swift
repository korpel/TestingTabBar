//
//  PageViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 25/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController,UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    fileprivate lazy var pages : [UIViewController] = {
        return [
            self.getViewController(withIdentifier: "firstViewControllerID"),
            self.getViewController(withIdentifier: "secondViewControllerID"),
            self.getViewController(withIdentifier: "thirdViewControllerID"),
            self.getViewController(withIdentifier: "differentViewController")
            
        ]
    }()
    fileprivate func getViewController(withIdentifier identifier: String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
     
        guard let viewControllerIndex = pages.index(of: viewController) else { return nil }
     
        let previousIndex = viewControllerIndex - 1
     
        guard previousIndex >= 0          else { return pages.last }
     
        guard pages.count > previousIndex else { return nil        }
     
        return pages[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = pages.index(of: viewController) else { return nil }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < pages.count else { return pages.first }
        
        guard pages.count > nextIndex else { return nil         }
        
        return pages[nextIndex]
    }
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        setupPageControl()
        return pages.count
    }
    
    private func setupPageControl() {
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.gray
        appearance.currentPageIndicatorTintColor = UIColor.red
        //appearance.backgroundColor = UIColor.purple
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
       return 0
    }
 
    

    override func viewDidLoad() {
        super.viewDidLoad()

       self.dataSource = self
       delegate = self
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
