//
//  Listado1ViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 21/7/22.
//

import UIKit

class Listado1ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(String(describing: type(of: self)))-\(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(String(describing: type(of: self)))-\(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(String(describing: type(of: self)))-\(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(String(describing: type(of: self)))-\(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(String(describing: type(of: self)))-\(#function)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("\(String(describing: type(of: self)))-\(#function)")
    }
    
    deinit {
        print("\(String(describing: type(of: self)))-\(#function)")
    }


    @IBAction func actionNavigate(_ sender: Any) {
        self.navigationController?.pushViewController(DetalleViewController(), animated: true)
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
