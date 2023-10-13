//
//  FooterCollectionReusableView.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 27/7/22.
//

import UIKit

class FooterCollectionReusableView: UICollectionReusableView {

    static let identifier = "FooterCollectionReusableViewIdentifier"
    static let nib = UINib(nibName: String(describing: FooterCollectionReusableView.self), bundle: Bundle(for: FooterCollectionReusableView.self))
    
    @IBOutlet weak var lbFooter: UILabel!
    
    func loadFooter() {
        lbFooter.text = "Footer"
        self.backgroundColor = .red.withAlphaComponent(0.5)
    }
    
}
