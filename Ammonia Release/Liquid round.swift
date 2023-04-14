//
//  Liquid round.swift
//  Ammonia Release
//
//  Created by Miguel Hernandez on 5/1/18.
//  Copyright © 2018 Miguel Hernandez. All rights reserved.
//

import UIKit

class Liquid_round: UIViewController {
    
    
    
    @IBOutlet var Diameter: UITextField!
    
    
    @IBOutlet var Pressure: UITextField!
    
    @IBOutlet var Time: UITextField!
    
    @IBOutlet var Flowrate: UILabel!
    
    @IBOutlet var Totalflow: UILabel!
    
    @IBAction func Calculation(sender: AnyObject) {
        
        
        if (Diameter.text) != "" && (Pressure.text) != "" && (Time.text) != "" {
            
        let newdiameter:String = Diameter.text!
        // Passsing the string into an integer
        let numberdiameter:Float = Float(newdiameter)!
        
        
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
        
        // L= 26.81 (D square) * sqrt (psig * density)
        
        
        let a:Float = 26.81 * numberdiameter * numberdiameter
        
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
