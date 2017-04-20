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
import FirebaseStorage


class DataHolder: NSObject {
    static let sharedInstance:DataHolder=DataHolder()
    
    var firDatabaseRef: FIRDatabaseReference!
    var firStorage:FIRStorage?
    var arCoche: Array<Coche>?
    var firStorageRef:FIRStorageReference?
    
    
    func initFirebase() {
        FIRApp.configure()
        firDatabaseRef = FIRDatabase.database().reference()
        firStorage = FIRStorage.storage()
        firStorageRef = firStorage?.reference()
    }
    
}
