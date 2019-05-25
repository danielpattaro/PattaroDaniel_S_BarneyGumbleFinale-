//
//  ViewController.swift
//  Barney Gumble
//
//  Created by Daniel Pattaro on 08/05/2019.
//  Copyright © 2019 Daniel Pattaro. All rights reserved.
//

import UIKit
var m1=0
var m2=0
var m3=0
var m4=0
class ViewController: UIViewController {

    @IBOutlet weak var recordMain: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guard let punt=defaults.object(forKey: "Record")  else {
            return
        }
        cntPrecedente=punt as! Int
        recordMain.text=String(cntPrecedente)
        
        guard let v1=defaults.object(forKey: "Spunta1")  else {
            return
        }
        m1=v1 as! Int
        guard let v2=defaults.object(forKey: "Spunta2")  else {
            return
        }
        m2=v2 as! Int
        guard let v3=defaults.object(forKey: "Spunta3")  else {
            return
        }
        m3=v3 as! Int
        guard let v4=defaults.object(forKey: "Spunta4")  else {
            return
        }
        m4=v4 as! Int
    }

    @IBAction func missione(_ sender: Any) {
     

        
    }
    
}

