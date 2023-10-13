//
//  AdCollectionViewCell.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 27/7/22.
//

import UIKit

class AdCollectionViewCell: UICollectionViewCell {

    static let identifier = "AdCollectionViewCellIdentifier"
    static let nib = UINib(nibName: String(describing: AdCollectionViewCell.self), bundle: Bundle(for: AdCollectionViewCell.self))

    @IBOutlet weak var lbText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func loadCell(text: String) {
        lbText.text = text
        contentView.backgroundColor = .orange.withAlphaComponent(0.6)
    }

}
