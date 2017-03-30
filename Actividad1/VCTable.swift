//
//  VCTable.swift
//  Actividad1
//
//  Created by Daniel de la Iglesia Gonzalez on 23/3/17.
//  Copyright © 2017 Daniel de la Iglesia Gonzalez. All rights reserved.
    
import UIKit

class VCTable: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //@IBOutlet var Item1:UILabel?
    
    @IBOutlet var miTabla:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celdaMia:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "celda1", for: indexPath) as! TableViewCell
        
        
        //Valor por defecto del label y variable de string en el que almacenamos la posicion de indexPath.row
        celdaMia.LabelCell?.text=" "
        
        if(indexPath.row>=0 || indexPath.row<=5){
            celdaMia.LabelCell?.text = "Daniel"
        }

        
        return celdaMia
        
   }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("HE PINCHADO EN: %d", indexPath.row)
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
