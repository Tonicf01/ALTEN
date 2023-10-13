//
//  AlertViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 27/7/22.
//

import UIKit

class AlertViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.tabBarItem = UITabBarItem(title: "Alert", image: UIImage(systemName: "a.square"), selectedImage: UIImage(systemName: "a.square.fill"))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionShowAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Mi primera alerta", message: "Esta es una alerta de prueba", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Muy bien", style: .default, handler: { action in
            print("Pulsado botón \"Muy bien\"")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            print("Pulsado botón \"Cancel\"")
        }))
        
        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: { action in
            print("Pulsado botón \"Destructive\"")
        }))
        
        self.present(alert, animated: true)
    }
    
    @IBAction func actionShowActionSheet(_ sender: Any) {
        
        let alert = UIAlertController(title: "Mi primer action sheet", message: "Esta es un action sheet de prueba", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Muy bien", style: .default, handler: { action in
            print("Pulsado botón \"Muy bien\"")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            print("Pulsado botón \"Cancel\"")
        }))
        
        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: { action in
            print("Pulsado botón \"Destructive\"")
        }))
        
        self.present(alert, animated: true)
    }
}
