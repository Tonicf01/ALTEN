//
//  TabBarViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 26/7/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    let delegado = ImplementaDelegatoTabBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadStyle()
        setup()
    }
    
    func setup() {//añadimos todas las pantallas a mostrar
        self.delegate = delegado
        
        self.viewControllers = [UINavigationController(rootViewController: ListNavigationViewController()),
                                ListPresentViewController(),
                                AlertViewController(),
                                CustomComponentsViewController(),
                                MapViewController(),
                                CollectionViewController(),
                                TablaViewController(),
                                PageViewController(),
                                ScrollViewController(),
                                ComponentesBasicosViewController(),
                                ComponentesIntermediosViewController()]
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name("present_save"), object: nil, queue: .main) { notification in
            print("Tabar Saved")
        }
        
        NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: .main) { _ in
            print("Tabbar didBecomeActiveNotification")
        }
        
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            if let lastVersion = UserDefaults.standard.string(forKey: "version"), lastVersion != version {
                showNewVersion(currentVersion: version)
            } else if UserDefaults.standard.string(forKey: "version") == nil {
                showNewVersion(currentVersion: version)
            }
            UserDefaults.standard.set(version, forKey: "version")
        }
    }
    
    func showNewVersion(currentVersion: String) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let alert = UIAlertController(title: "Bienvenido", message: "Estás en la versión \(currentVersion)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cerrar", style: .cancel))
            self.present(alert, animated: true)
        }
    }
    
    func loadStyle() {//le damos los estilos
        let appearance = UITabBarAppearance()//objeto de la apariencia
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        self.tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {//le indicamos que solo a partir de una version
            self.tabBar.scrollEdgeAppearance = appearance
        }
    }

}

//extension TabBarViewController: UITabBarControllerDelegate {
//    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//        print(String(describing: type(of: viewController)))
//    }
//}

//clase que nos permite imprimir
class ImplementaDelegatoTabBar: NSObject, UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print(String(describing: type(of: viewController)))
    }
    
}
