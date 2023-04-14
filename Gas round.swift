//
//  Gas round.swift
//  Ammonia Release
//
//  Created by Miguel a.k.a big DADDY 4/29/18.
//  Copyright © 2018 Miguel Hernandez. All rights reserved.
//

import UIKit

class Gas_round: UIViewController {
    
    
    @IBOutlet var Diameter: UITextField!
    
    
    @IBOutlet var Pressure: UITextField!
    
    
    @IBOutlet var Time: UITextField!
    
    
    @IBOutlet var Flowrate: UILabel!
    
    @IBOutlet var Totalflow: UILabel!
    
    
    
    
    
    @IBAction func Calculation(sender: AnyObject)
    {
    
        if (Diameter.text) != "" && (Pressure.text) != "" && (Time.text) != "" {
            
            
            let newdiameter:String = Diameter.text!
            //Passsing the string into an integer
            
            
            
            let numberdiameter:Float = Float (newdiameter)!
            
            
            
            
            
            let newpressure:String = Pressure.text!
            
            let numberpressure:Float = Float (newpressure)!
            
            
            
            let newtime:String = Time.text!
            
            let numbertime:Float = Float (newtime)!
            
            
            let a:Float = 15.48 * numberdiameter * numberdiameter * (numberpressure + 14.7)
            
            let b:Float = a / 23
            
            
            
            Flowrate.text = "\(b) "
            
            let c:Float = b * numbertime
            
            Totalflow.text = "\(c)"
            
            
        }
        
            
        
        
        
        else {
        
        
            let alert = UIAlertController(title: "Enter all Values", message:  "", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Exit", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert,animated: true, completion: nil)
        
        
        
        }
        
        
            
        
        
    
        
    
}

}

