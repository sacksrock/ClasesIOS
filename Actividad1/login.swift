//
//  login.swift
//  Actividad1
//
//  Created by Daniel de la Iglesia Gonzalez on 20/4/17.
//  Copyright © 2017 Daniel de la Iglesia Gonzalez. All rights reserved.
//

import UIKit
import CoreLocation

class login: NSObject,CLLocationManagerDelegate  {

    var locationManager:CLLocationManager?
    
    override init(){
        super.init()
        locationManager = CLLocationManager()
        locationManager?.delegate=self
        locationManager?.requestAlwaysAuthorization()
        locationManager?.startUpdatingLocation()
        
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("LATITUD: ",locations[0].coordinate.latitude,"LONGITUD: ",locations[0].coordinate.longitude)
    }

}
