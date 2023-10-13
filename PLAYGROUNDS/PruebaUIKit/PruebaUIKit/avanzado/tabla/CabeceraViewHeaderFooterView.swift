//
//  CabeceraViewHeaderFooterView.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 26/7/22.
//

import UIKit

class CabeceraViewHeaderFooterView: UITableViewHeaderFooterView {
    
    static let identifier = "CabeceraViewHeaderFooterViewIdentifier"
    static let nib = UINib(nibName: String(describing: CabeceraViewHeaderFooterView.self), bundle: Bundle(for: CabeceraViewHeaderFooterView.self))

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
    }

}
