//
//  Gas irregular.swift
//  Ammonia Release
//
//  Created by Miguel 5/1/18.
//  Copyright © 2018 Miguel Hernandez. All rights reserved.
//

import UIKit

class Gas_irregular: UIViewController {
    
    
    @IBOutlet var Area: UITextField!
    
    
    @IBOutlet var Pressure: UITextField!
    
    
    @IBOutlet var Time: UITextField!
    
    
    @IBOutlet var Flowrate: UILabel!
    
    @IBOutlet var Totalflow: UILabel!
    
    @IBAction func Calculation(sender: AnyObject) {
        
        if (Area.text) != "" && (Pressure.text) != "" && (Time.text) != "" {
            
        
        let newarea:String = Area.text!
        // Passsing the string into an integer
        let numberarea:Float = Float(newarea)!
        
        
        let newpressure:String = Pressure.text!
        
        let numberpressure:Float = Float(newpressure)!
        
        
        
        let newtime:String = Time.text!
        
        let numbertime:Float = Float(newtime)!
        
        
       let a:Float = 19.71 * numberarea * (numberpressure + 14.7)
        
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
    
    

