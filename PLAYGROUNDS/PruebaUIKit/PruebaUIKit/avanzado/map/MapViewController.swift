//
//  MapViewController.swift
//  PruebaUIKit
//
//  Created by Rafael FERNANDEZ on 27/7/22.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {
    
    @IBOutlet weak var customMap: MKMapView!
    private lazy var locationManager: CLLocationManager = {
        let locationManager = CLLocationManager()
        locationManager.delegate = self
        return locationManager
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.tabBarItem = UITabBarItem(title: "Map", image: UIImage(systemName: "m.square"), selectedImage: UIImage(systemName: "m.square.fill"))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    func setup() {
        registerAnnotation()
//        customMap.mapType = .hybridFlyover
        customMap.delegate = self
        customMap.showsUserLocation = true
        
        customMap.addAnnotation(MapAnnotation(title: "Mi lugar", coordinate: CLLocationCoordinate2D(latitude: 37.41975678495032, longitude: -5.974448173741869)))
        if CLLocationManager.locationServicesEnabled() {
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
        }
        
    }
}

extension MapViewController: MKMapViewDelegate {
    func registerAnnotation() {
        customMap.register(MapPinAnnotation.self, forAnnotationViewWithReuseIdentifier: MapPinAnnotation.identifier)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is MapAnnotation else { return nil }
        
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: MapPinAnnotation.identifier, for: annotation) as? MapPinAnnotation
        
        if annotationView == nil {
            annotationView = MapPinAnnotation(annotation: annotation, reuseIdentifier: MapPinAnnotation.identifier)
        } else {
            annotationView?.annotation = annotation
        }
        annotationView?.loadAnnotation()
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print("Select")
    }
    
}

extension MapViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            print("\(location)")
            let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 2000, longitudinalMeters: 2000)
            customMap.setRegion(region, animated: true)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .notDetermined:
            print("notDetermined")
        case .restricted:
            print("restricted")
        case .denied:
            print("denied")
        case .authorizedAlways:
            print("authorizedAlways")
        case .authorizedWhenInUse:
            print("authorizedWhenInUse")
        case .authorized:
            print("authorized")
        }
    }
}
