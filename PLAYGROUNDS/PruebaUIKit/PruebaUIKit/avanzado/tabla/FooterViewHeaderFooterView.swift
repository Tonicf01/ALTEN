//
//  FooterViewHeaderFooterView.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 26/7/22.
//

import UIKit

class FooterViewHeaderFooterView: UITableViewHeaderFooterView {
    static let identifier = "FooterViewHeaderFooterViewIdentifier"
    static let nib = UINib(nibName: String(describing: FooterViewHeaderFooterView.self), bundle: Bundle(for: FooterViewHeaderFooterView.self))
    
    @IBOutlet weak var lbFooter: UILabel!
    
    func loadFooter() {
        lbFooter.text = "Footer"
        self.contentView.backgroundColor = .green.withAlphaComponent(0.5)
    }

}
