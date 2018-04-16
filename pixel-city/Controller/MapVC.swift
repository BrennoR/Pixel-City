//
//  ViewController.swift
//  pixel-city
//
//  Created by Brenno Ribeiro on 4/15/18.
//  Copyright © 2018 Brenno Ribeiro. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    // Outlets
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }

    @IBAction func centerMapBtnWasPressed(_ sender: Any) {
    }
    
}

extension MapVC: MKMapViewDelegate {
    
}
