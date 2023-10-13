//
//  DetailNavigationViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 28/7/22.
//

import UIKit

protocol DetailSaveProtocol: AnyObject {
    func detailSaved()
}

class DetailNavigationViewController: UIViewController {
    weak var delegate: DetailSaveProtocol?
    let text: String
    
    init(text: String, delegate: DetailSaveProtocol) {
        self.text = text
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .brown
        
//        self.title = "Detalle"
        self.title = text

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(actionRightButton))
    }
    
    
    @objc func actionRightButton() {
        print("Pulsado")
        delegate?.detailSaved()
    }

    @IBAction func actionPop(_ sender: Any) {
        navigationController?.popViewController(animated: true)
//        navigationController?.popToViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
//        navigationController?.popToRootViewController(animated: true)
//        navigationController?.viewControllers
//        navigationController?.setViewControllers([ScrollViewController()], animated: true)

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
