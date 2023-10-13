//
//  ScrollViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 26/7/22.
//

import UIKit

class ScrollViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.tabBarItem = UITabBarItem(title: "Scroll", image: UIImage(systemName: "s.square"), selectedImage: UIImage(systemName: "s.square.fill"))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.contentInset = UIEdgeInsets(top: 40, left: 0, bottom: 100, right: 0)
        scrollView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.scrollView.setContentOffset(CGPoint(x: 0, y: 100), animated: true)
        }
    }

}

extension ScrollViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("\(#function) - \(scrollView.contentOffset)")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print(#function)
    }
}

extension ScrollViewController: IndexViewController {
    var index: Int { return 2 }
}
