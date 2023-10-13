//
//  DetailPresentViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 28/7/22.
//

import UIKit

class DetailPresentViewController: UIViewController {
    
    weak var firstViewController: UIViewController?
    let finish: (Bool) -> Void
    
    init(firstViewController: UIViewController?, finish: @escaping (Bool) -> Void) {
        self.firstViewController = firstViewController
        self.finish = finish
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple

        // Do any additional setup after loading the view.
    }


    @IBAction func actionSave(_ sender: Any) {
        finish(true)
        
        NotificationCenter.default.post(name: NSNotification.Name("present_save"), object: nil, userInfo: nil)
    }
    
    @IBAction func actionDismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func actionPresent(_ sender: Any) {
        self.present(DetailPresentViewController(firstViewController: firstViewController ?? self, finish: { status in
            print("Guardado \(status)")
        }), animated: true, completion: nil)
    }
    
    @IBAction func actionDismissToFirst(_ sender: Any) {
        firstViewController?.presentingViewController?.dismiss(animated: true)
    }
}
