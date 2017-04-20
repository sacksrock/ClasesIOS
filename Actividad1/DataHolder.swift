//
//  DataHolder.swift
//  Actividad1
//
//  Created by Daniel de la Iglesia Gonzalez on 22/3/17.
//  Copyright © 2017 Daniel de la Iglesia Gonzalez. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class DataHolder: NSObject {
    static let sharedInstance:DataHolder=DataHolder()
    
    var numeroCeldasColeccion:UInt=20;
    var locationAdmin:LocationAdmin?
    var firDataBaseRef = FIRDatabaseReference!
    
    func initFirebase(){
        FIRApp.configure()
        firDataBaseRef = FIRDatabase.database().reference()
    }

}
