//
//  VCCollection.swift
//  Actividad1
//
//  Created by Daniel de la Iglesia Gonzalez on 20/4/17.
//  Copyright © 2017 Daniel de la Iglesia Gonzalez. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase


class VCCollection: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet var colPrincipal:UICollectionView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DataHolder.sharedInstance.arCoche?.removeAll()
        
        
        DataHolder.sharedInstance.firDatabaseRef.child("Coches").observe(FIRDataEventType.value, with: { (snapshot) in
            
            
            let arTemp=snapshot.value as? Array<AnyObject>
            if(DataHolder.sharedInstance.arCoche==nil){
                DataHolder.sharedInstance.arCoche=Array<Coche>()
            }
            for  co in arTemp! as [AnyObject]{
                let cochei=Coche(valores: co as![String : AnyObject])
                DataHolder.sharedInstance.arCoche?.append(cochei)
            }
            
            self.colPrincipal?.reloadData()
    })
}
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(DataHolder.sharedInstance.arCoche==nil){
            return 0
        }
        else{
            return (DataHolder.sharedInstance.arCoche?.count)!
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda2: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "micelda2", for: indexPath) as! CollectionViewCell
        
        let cochei:Coche=DataHolder.sharedInstance.arCoche![indexPath.row]
        celda2.lblNombre?.text=cochei.sNombre
        
        
        celda2.descargarImagen(ruta: cochei.sRutaImagen!)
        
        return celda2

    }
    
    
    
    
}
