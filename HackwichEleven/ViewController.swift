//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Kawena Villafania on 11/2/22.
//

import UIKit
import MapKit
import CoreLocation
 
class ViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    let regionRadius = 10000
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerMapOnLocation(location: initialLocation)
        // Do any additional setup after loading the view.
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2DMake(21.346470, -158.080098))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Kalapawai Market", type: "Cafe", coordinate: CLLocationCoordinate2DMake(21.39736, -157.72982))
        mapView.addAnnotation(restaurantTwo)
               
        
    }


    func centerMapOnLocation(location:CLLocation){
        
        let coordinationRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        mapView.setRegion(coordinationRegion, animated: true)
        
    }
    
    
}

