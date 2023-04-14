//
//  Room.swift
//  Ammonia Release
//
//  Created by Miguel and Jill Hernandez on 5/2/18.
//  Copyright © 2018 Miguel Hernandez. All rights reserved.
//

import UIKit

class Room: UIViewController {
    
    
    @IBOutlet var Length: UITextField!
    
    @IBOutlet var Width: UITextField!
    
    @IBOutlet var Height: UITextField!
    
    @IBOutlet var Ammonia: UITextField!
    
    @IBOutlet var Totalflow: UILabel!
    
    
    @IBAction func Calculation(sender: AnyObject) {
        
        if (Length.text) != "" && (Width.text) != "" && (Height.text) != "" && (Ammonia.text) != "" {
        
        
        let newlength:String = Length.text!
        // Passsing the string into an integer
        let numberlength:Float = Float(newlength)!
        
        
        let newwidth:String = Width.text!
        
        let numberwidth:Float = Float(newwidth)!
        
        
        
        let newheight:String = Height.text!
        
        let numberheight:Float = Float(newheight)!
        
        
        let newammonia:String = Ammonia.text!
        let numberammonia:Float = Float(newammonia)!
        
        let a:Float = numberheight * numberlength * numberwidth
        
        let b:Float = a * numberammonia * 17
        
        let c:Float = 29 * 13.1 * 1000000
        
        let d:Float = b/c
        
        
        Totalflow.text = "\(d)"
        
        }
        
        
        
        else {
            
            
          let alert = UIAlertController(title: "Enter all Values", message:  "", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Exit", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert,animated: true, completion: nil)
            
            
            
        }

       

        
        
    }
    
    }


