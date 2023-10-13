//
//  CustomView.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 27/7/22.
//

import UIKit

class CustomView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        guard let view = Bundle(for: CustomView.self).loadNibNamed(String(describing: type(of: self)), owner: self)?.first as? UIView else { return }
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    }
    
    func loadView(title: String, description: String) {
        contentView.backgroundColor = .orange.withAlphaComponent(0.5)
        lbTitle.text = title
        lbDescription.text = description
    }
    
}
