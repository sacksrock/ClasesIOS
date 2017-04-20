//
//  ViewController.swift
//  Actividad1
//
//  Created by Daniel de la Iglesia Gonzalez on 22/3/17.
//  Copyright © 2017 Daniel de la Iglesia Gonzalez. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    @IBOutlet var btnLogear:UIButton?
    @IBOutlet var txtfUser:UITextField?
    @IBOutlet var txtfPass:UITextField?
    @IBOutlet var failLogin:UILabel?
    var stUser:String?
    var inPass:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func accionBotonLoguear(){
        if(txtfUser?.text != "" && txtfPass?.text != ""){
        
          FIRAuth.auth()?.signIn(withEmail: (txtfUser?.text)!, password: (txtfPass?.text)!) { (user, error) in
            
            if(error == nil){
                self.performSegue(withIdentifier: "tran1", sender: nil)
            }
            else{
                print("Error",error!)
            }
        
            }
    
        }
    
    }
}
