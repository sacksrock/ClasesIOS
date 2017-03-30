//
//  VCColeccion.swift
//  Actividad1
//
//  Created by Daniel de la Iglesia Gonzalez on 27/3/17.
//  Copyright © 2017 Daniel de la Iglesia Gonzalez. All rights reserved.
//

import UIKit

class VCColeccion: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var colPrinc:UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5;
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell {
        let cell:UICollectionViewCell=collectionView.dequeueReusableCell(withReuseIdentifier: "micelda2", for: indexPath)
        
        return cell
    }

    /*
     
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
