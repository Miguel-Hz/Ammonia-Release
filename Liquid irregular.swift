//
//  Liquid irregular.swift
//  Ammonia Release
//
//  Created by Miguel Hernandez on 5/2/18.
//  Copyright © 2018 Miguel Hernandez. All rights reserved.
//

import UIKit

class Liquid_irregular: UIViewController {
    
    
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
        
        // quad equation for second degree polynomial
        
        let D:Float = 8137.3 - numberpressure
        
        let E:Float = 4 * 4.3744 * D
        
        let F:Float = 377.3 * 377.3
            
            let bla:Float = abs(F-E)
        
        let G:Float = sqrt(bla)
        
        let H:Float = 377.3 - G
        
        let I:Float = H / (2 * 4.3744)
        
         //L= 34.133 * area * sqrt (pressure * density)
        
        
        let a:Float = 34.133 * numberarea 
        
        let b:Float = a * sqrt(numberpressure * I)
        
        
        
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
