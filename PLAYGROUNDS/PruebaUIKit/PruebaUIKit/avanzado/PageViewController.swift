//
//  PageViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 26/7/22.
//

import UIKit

protocol IndexViewController: UIViewController {
    var index: Int { get }
}

class PageViewController: UIViewController {
    
    private var pageViewController: UIPageViewController?
    private var items: [IndexViewController] = []
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.tabBarItem = UITabBarItem(title: "PageView", image: UIImage(systemName: "p.square"), selectedImage: UIImage(systemName: "p.square.fill"))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    func setup() {
        let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        pageViewController.delegate = self
        pageViewController.dataSource = self
        pageViewController.view.backgroundColor = .clear
        self.addChild(pageViewController)
        self.view.addSubview(pageViewController.view)
        pageViewController.didMove(toParent: self)
        
        pageViewController.view.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        pageViewController.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        pageViewController.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        pageViewController.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        self.pageViewController = pageViewController
        
        items.append(ComponentesBasicosViewController())
        items.append(ComponentesIntermediosViewController())
        items.append(ScrollViewController())
        
        pageViewController.setViewControllers([items[0]], direction: .forward, animated: false)
        
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.4)
        appearance.currentPageIndicatorTintColor = UIColor.gray
    }

}

extension PageViewController: UIPageViewControllerDelegate {
    
}

extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let indexViewController = viewController as? IndexViewController {
            let index = indexViewController.index + 1
            if items.indices.contains(index) {
                return items[index]
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let indexViewController = viewController as? IndexViewController {
            let index = indexViewController.index - 1
            if items.indices.contains(index) {
                return items[index]
            }
        }
        return nil
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return items.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        if let indexViewController = pageViewController.viewControllers?.first as? IndexViewController {
            return indexViewController.index
        }
        return 0
    }
    
}
