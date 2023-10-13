//
//  AdTableViewCell.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 26/7/22.
//

import UIKit

class AdTableViewCell: UITableViewCell {
    
    static let identifier = "AdTableViewCellIdentifier"
    static let nib = UINib(nibName: String(describing: AdTableViewCell.self), bundle: Bundle(for: AdTableViewCell.self))

    @IBOutlet weak var lbText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadCell(text: String) {
        lbText.text = text
    }
    
}
