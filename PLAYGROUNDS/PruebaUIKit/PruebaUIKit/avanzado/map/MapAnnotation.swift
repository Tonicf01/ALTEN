//
//  MapAnnotation.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 27/7/22.
//

import UIKit
import MapKit

class MapAnnotation: MKPointAnnotation {

    init(title: String, coordinate: CLLocationCoordinate2D) {
        super.init()
        self.title = title
        self.coordinate = coordinate
    }
}
