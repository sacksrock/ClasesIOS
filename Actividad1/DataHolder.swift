//
//  DataHolder.swift
//  Actividad1
//
//  Created by Daniel de la Iglesia Gonzalez on 22/3/17.
//  Copyright © 2017 Daniel de la Iglesia Gonzalez. All rights reserved.
//

import UIKit

class DataHolder: NSObject {
    static let sharedInstance:DataHolder=DataHolder()
    
    var User:String?
    var Password:String?
    var Email:String?
    
}
