//
//  VCRegistro.swift
//  Actividad1
//
//  Created by Daniel de la Iglesia Gonzalez on 22/3/17.
//  Copyright © 2017 Daniel de la Iglesia Gonzalez. All rights reserved.
//

import UIKit
import FirebaseAuth

class VCRegistro: UIViewController {
    
    @IBOutlet var txtfRUser:UITextField?
    @IBOutlet var txtfRPass:UITextField?
    @IBOutlet var txtfPasstwo:UITextField?
    @IBOutlet var txtfEmail:UITextField?
    @IBOutlet var faillogin:UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func accionokr() {
        FIRAuth.auth()?.createUser(withEmail:(txtfEmail?.text)!, password:(txtfRPass?.text)! ) { (user, error) in
        if(error == nil){
            self.performSegue(withIdentifier: "tran2", sender: self)
            }
            else{
                print("Error",error!)
            }
        }
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

