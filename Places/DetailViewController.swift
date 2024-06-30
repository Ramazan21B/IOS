//
//  DetailViewController.swift
//  Places
//
//  Created by Aitzhan Ramazan on 28.06.2024.
//

import UIKit
import MapKit
class DetailViewController: UIViewController {
    @IBOutlet weak var detailedDescription: UILabel!
    @IBOutlet weak var mapview: MKMapView!
    @IBOutlet weak var openMapButton: UIButton!
    
    
    @IBAction func OpenMap(_ sender: Any) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let map = mainStoryboard.instantiateViewController(withIdentifier: "mainMap") as! ViewController
        
        map.placeLocation = places
        navigationController?.show(map, sender: nil)
    }
    
    
    var places = Places()
    override func viewDidLoad() {
        super.viewDidLoad()
        detailedDescription.text = places.description
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
