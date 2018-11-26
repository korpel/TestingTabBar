

import UIKit

class PageViewController: UIPageViewController,UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    //my 4 viewControllers used in the UIPageViewController
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
    
    public func setupPageControl() {
        let appearance = UIPageControl.appearance(whenContainedInInstancesOf: [UIPageViewController.self])
        appearance.pageIndicatorTintColor = UIColor.gray
        appearance.currentPageIndicatorTintColor = UIColor.red
        appearance.backgroundColor = pages[appearance.currentPage].view.backgroundColor
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        setupPageControl()
        return pages.count
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
            setupPageControl()

        }
    }
    

    
}
