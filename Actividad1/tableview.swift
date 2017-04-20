//
//  tableview.swift
//  Actividad1
//
//  Created by Daniel de la Iglesia Gonzalez on 20/4/17.
//  Copyright © 2017 Daniel de la Iglesia Gonzalez. All rights reserved.
//

import UIKit

import UIKit
import Firebase
import FirebaseDatabase

class tableview: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var miTabla:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        DataHolder.sharedInstance.firDatabaseRef.child("Coches").observe(FIRDataEventType.value, with: { (snapshot) in
            
            let arTemp=snapshot.value as? Array<AnyObject>
            DataHolder.sharedInstance.arCoche=Array<Coche>()
            //}
    
            for  co in arTemp! as [AnyObject]{
                let cochei=Coche(valores: co as![String : AnyObject])
                DataHolder.sharedInstance.arCoche?.append(cochei)
            }
            
            self.miTabla?.reloadData()
    
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(DataHolder.sharedInstance.arCoche==nil){
            return 0
        }
        else{
            return (DataHolder.sharedInstance.arCoche?.count)!
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdamia: CeldaTableViewCell = tableView.dequeueReusableCell(withIdentifier: "celda1", for: indexPath) as! CeldaTableViewCell
        
        
        let cochei:Coche=DataHolder.sharedInstance.arCoche![indexPath.row]
        celdamia.lblNombre?.text=cochei.sNombre
        
        
        celdamia.descargarImagen(ruta: cochei.sRutaImagen!)
        
        return celdamia
        
    }
}
