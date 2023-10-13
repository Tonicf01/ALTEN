//
//  ComponentesBasicosViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 21/7/22.
//

import UIKit

class ComponentesBasicosViewController: UIViewController {
    
    @IBOutlet var customView1: UIView!
    @IBOutlet weak var lbCustom: UILabel!
    @IBOutlet weak var imgCustom: UIImageView!
    @IBOutlet weak var activityIndicatorCustom: UIActivityIndicatorView!
    
    @IBOutlet weak var imgStack: UIImageView!
    @IBOutlet weak var lbTitleStack: UILabel!
    @IBOutlet weak var lbDescriptionStack: UILabel!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.tabBarItem = UITabBarItem(title: "Básico", image: UIImage(systemName: "b.square"), selectedImage: UIImage(systemName: "b.square.fill"))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadCustomView()
        loadCustomLabel()
        loadCustomImage()
        loadCustomActivityIndicator()
        loadCustomStack()
    }
    
    func loadCustomView() {
        customView1.isHidden = false
        customView1.backgroundColor = UIColor.blue
    }
    
    func loadCustomLabel() {
        UIFont.familyNames.forEach({ familyName in
                    let fontNames = UIFont.fontNames(forFamilyName: familyName)
                    print(familyName, fontNames)
                })
        lbCustom.text = "Hola mundo"
        lbCustom.textAlignment = .center
        lbCustom.textColor = .green
        lbCustom.font = UIFont(name: "AvengeanceHeroicAvengerBold", size: 60)
    }
    
    func loadCustomImage() {
        imgCustom.image = UIImage(named: "endgame")
        imgCustom.contentMode = .scaleAspectFit
        imgCustom.backgroundColor = .gray
        let mask = UIImageView(image: UIImage(named: "star"))
        mask.contentMode = .scaleAspectFit
        imgCustom.mask = mask
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imgCustom.mask?.frame = imgCustom.bounds
    }

    func loadCustomActivityIndicator() {
        activityIndicatorCustom.color = .red
        activityIndicatorCustom.style = .large
        activityIndicatorCustom.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {//va a ejecutarlo de antes durante 3 segundos y luego parará
            self.activityIndicatorCustom.stopAnimating()
        }
    }
    
    func loadCustomStack() {
        imgStack.image = UIImage(named: "spiderman")
        
        lbTitleStack.text = "Spiderman: No way home"
        lbTitleStack.font = UIFont(name: "AvengeanceHeroicAvengerBold", size: 18)
        
        lbDescriptionStack.text = "Tras descubrirse la identidad secreta de Peter Parker como Spider-Man, la vida del joven se vuelve una locura. Peter decide pedirle ayuda al Doctor Extraño para recuperar su vida. Pero algo sale mal y provoca una fractura en el multiverso."
        
        
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


extension ComponentesBasicosViewController: IndexViewController {
    var index: Int { return 0 }
}
