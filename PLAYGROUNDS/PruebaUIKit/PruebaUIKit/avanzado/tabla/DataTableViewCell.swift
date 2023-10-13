//
//  DataTableViewCell.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 26/7/22.
//

import UIKit

class DataTableViewCell: UITableViewCell {
    
    static let identifier = "DataTableViewCellIdentifier"
    static let nib = UINib(nibName: String(describing: DataTableViewCell.self), bundle: Bundle(for: DataTableViewCell.self))

    @IBOutlet private weak var lbTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        lbTitle.text = nil
    }
    
    func loadCell(title: String) {
        lbTitle.text = title
    }
    
}
