//
//  MapPinAnnotation.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 27/7/22.
//

import UIKit
import MapKit

class MapPinAnnotation: MKPinAnnotationView {
    
    static let identifier = "MapPinAnnotationIdentifier"

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    func loadAnnotation() {
        self.canShowCallout = true
        self.pinTintColor = .purple
        
        let btn = UIButton(type: .detailDisclosure)
        btn.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        self.rightCalloutAccessoryView = btn
    }

    @objc func actionButton() {
        print("Botón pulsado")
    }
}
