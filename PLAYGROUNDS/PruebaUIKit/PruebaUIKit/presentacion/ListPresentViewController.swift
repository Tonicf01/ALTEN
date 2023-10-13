//
//  ListPresentViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 28/7/22.
//

import UIKit

class ListPresentViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.tabBarItem = UITabBarItem(title: "Present", image: UIImage(systemName: "p.square"), selectedImage: UIImage(systemName: "p.square.fill"))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green

        // Do any additional setup after loading the view.
    }

    @IBAction func actionPresent(_ sender: Any) {
        let detailViewController = DetailPresentViewController(firstViewController: nil) { [weak self] status in
            print("Guardado \(status)")
            self?.reloadData()
        }
        detailViewController.modalTransitionStyle = .flipHorizontal
        detailViewController.modalPresentationStyle = .fullScreen
        self.present(detailViewController, animated: true, completion: nil)
    }
    
    func reloadData() {
        print("Recargando")
    }
    
}
