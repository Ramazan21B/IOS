//
//  ViewController.swift
//  Places
//
//  Created by Aitzhan Ramazan on 28.06.2024.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var mainMapView: MKMapView!
    
    var placeLocation = Places()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainMapView.delegate = self
        
        
        // 1
        let sourceLocation = CLLocationCoordinate2D(latitude: 40.730610, longitude: -73.935242)
        let destinationLocation = CLLocationCoordinate2D(latitude: placeLocation.latitude, longitude: placeLocation.longitude)
        
        // 2 упаковка в Placemark
        let sourcePlacemark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
        let destinationPlacemark = MKPlacemark(coordinate: destinationLocation,addressDictionary: nil)
        // 3 упаковка в MapItem
        let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
        let destinationMapItem = MKMapItem(placemark: destinationPlacemark)
        
        
        let sourceAnnotation = MKPointAnnotation()
        sourceAnnotation.title = "You are here"
        
        
        if let location = sourcePlacemark.location{
            sourceAnnotation.coordinate = location.coordinate
        }
        
        let destinationAnnotation = MKPointAnnotation()
        destinationAnnotation.title = placeLocation.name
        
        
        if let location = destinationPlacemark.location{
            destinationAnnotation.coordinate = location.coordinate
        }
        
        self.mainMapView.showAnnotations([sourceAnnotation,destinationAnnotation], animated: true )
        let source = CLLocation(latitude: sourceLocation.latitude, longitude: destinationLocation.longitude)
        
        let destination = CLLocation(latitude: destinationLocation.latitude, longitude: destinationLocation.longitude)
        
        let meters:CLLocationDistance = destination.distance(from: source)
        distanceLabel.text = String(format: "Distance: %.2f m", meters)
        
        
        let directionRequest = MKDirections.Request()
        
        directionRequest.source = sourceMapItem
        
        directionRequest.destination = destinationMapItem
        
        directionRequest.transportType = .walking
        
        
        // Calculate the direction
        let directions = MKDirections(request: directionRequest)
       
        // 8.
         directions.calculate {
          (response, error) -> Void in
          
          guard let response = response else {
            if let error = error {
              print("Error: \(error)")
            }
            
            return
          }
          
          let route = response.routes[0]
            self.mainMapView.addOverlay((route.polyline), level: MKOverlayLevel.aboveRoads)
          
          let rect = route.polyline.boundingMapRect
            self.mainMapView.setRegion(MKCoordinateRegion(rect), animated: true)
        }
    }
    
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        // Настраиваем линию
        let renderer = MKPolylineRenderer (overlay: overlay)
        // Цвет красный
        renderer.strokeColor = UIColor.blue
        // Ширина
        renderer.lineWidth = 4.0
        return renderer
    }

}

