//
//  CustomComponentsViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 27/7/22.
//

import UIKit

class CustomComponentsViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var customView: CustomView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.tabBarItem = UITabBarItem(title: "Components", image: UIImage(systemName: "c.square"), selectedImage: UIImage(systemName: "c.square.fill"))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    func setup() {
        customView.loadView(title: "Hola", description: "Mundo")
        
        let cView = CustomView()
        cView.loadView(title: "Esto", description: "Funciona")
        
        stackView.addArrangedSubview(cView)
        
    }

}
