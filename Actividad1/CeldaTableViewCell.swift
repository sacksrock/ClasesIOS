//
//  CeldaTableViewCell.swift
//  Actividad1
//
//  Created by Daniel de la Iglesia Gonzalez on 20/4/17.
//  Copyright © 2017 Daniel de la Iglesia Gonzalez. All rights reserved.
//

import UIKit


import UIKit
import FirebaseStorage

class CeldaTableViewCell: UITableViewCell {
    
    @IBOutlet var lblNombre:UILabel?
    @IBOutlet var lblImagen:UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
    func descargarImagen(ruta:String) {

        let islandRef = DataHolder.sharedInstance.firStorageRef?.child(ruta)
        
        islandRef?.data(withMaxSize: 1 * 1024 * 1024) { data, error in
            if error != nil {
            }
            else {
                let image = UIImage(data: data!)
                self.lblImagen?.image=image
            }
        }
    }
}
