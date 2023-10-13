//
//  DataCollectionViewCell.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 27/7/22.
//

import UIKit

class DataCollectionViewCell: UICollectionViewCell {

    static let identifier = "DataCollectionViewCellIdentifier"
    static let nib = UINib(nibName: String(describing: DataCollectionViewCell.self), bundle: Bundle(for: DataCollectionViewCell.self))
    
    @IBOutlet weak var lbTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        lbTitle.text = nil
    }
    
    func loadCell(title: String) {
        lbTitle.text = title
        contentView.backgroundColor = .green.withAlphaComponent(0.6)
    }
    
}
