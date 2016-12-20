//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Bhairavi Chandersekhar on 11/7/16.
//  Copyright © 2016 Bhairavi Chandersekhar. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView:MKMapView!
    
    override func loadView() {
        //Create a map view
        mapView = MKMapView()
        
        //Set it as *the* view of this view controller
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self,
                                   action: "mapTypeChanged:",
                                   forControlEvents: .ValueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        let topConstraint = segmentedControl.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 8)
        let margins = view.layoutMarginsGuide
        let trailingConstraint = segmentedControl.leadingAnchor.constraintEqualToAnchor(margins.trailingAnchor)
        
        topConstraint.active = true
        trailingConstraint.active = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MapViewController loaded its view.")
    }
    
}
