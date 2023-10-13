//
//  ListNavigationViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 28/7/22.
//

import UIKit

class ListNavigationViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.tabBarItem = UITabBarItem(title: "Navigation", image: UIImage(systemName: "n.square"), selectedImage: UIImage(systemName: "n.square.fill"))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        
        self.title = NSLocalizedString("titulo_listado", comment: "")
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .blue
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        let buttonAppearence = UIBarButtonItemAppearance(style: .plain)
        buttonAppearence.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.buttonAppearance = buttonAppearence
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.compactScrollEdgeAppearance = appearance
    }


    @IBAction func actionDownloadProducts(_ sender: Any) {
        guard let url = URL(string: "https://raw.githubusercontent.com/SDOSLabs/JSON-Sample/master/Products/products.json") else {
            print("URL")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                print("error")
                return
            }
            guard let response = response as? HTTPURLResponse, 200..<300 ~= response.statusCode else {
                print("response")
                return
            }
            guard let data = data else {
                print("data")
                return
            }
            print(String(data: data, encoding: .utf8))
            
            guard let directory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last else {
                print("FileManager")
                return
            }
            let fileURL = directory.appendingPathComponent("products.json")
            do {
                if FileManager.default.fileExists(atPath: fileURL.path) {
                    try FileManager.default.removeItem(at: fileURL)
                }
                try data.write(to: fileURL)
            } catch {
                print(error)
            }
            

        }.resume()
    }
    
    @IBAction func actionNavigate(_ sender: Any) {
        guard let navigationController = navigationController else { return }
        navigationController.pushViewController(DetailNavigationViewController(text: "Probando el texto", delegate: self), animated: true)
        
    }
}

extension ListNavigationViewController: DetailSaveProtocol {
    func detailSaved() {
        print("Detalle guardado")
    }
    
    
}
