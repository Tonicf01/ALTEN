//
//  HeaderCollectionReusableView.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 27/7/22.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {

    static let identifier = "HeaderCollectionReusableViewIdentifier"
    static let nib = UINib(nibName: String(describing: HeaderCollectionReusableView.self), bundle: Bundle(for: HeaderCollectionReusableView.self))

    @IBOutlet weak var lbTitle: UILabel!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    func loadHeader() {
        lbTitle.text = "Cabecera"
        self.backgroundColor = .blue.withAlphaComponent(0.5)
    }
}
