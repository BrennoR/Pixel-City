//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Brenno Ribeiro on 4/15/18.
//  Copyright © 2018 Brenno Ribeiro. All rights reserved.
//

import Foundation
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
