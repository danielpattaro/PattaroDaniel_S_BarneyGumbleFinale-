//
//  ViewControllerMissioni.swift
//  Barney Gumble
//
//  Created by Daniel Pattaro on 10/05/2019.
//  Copyright © 2019 Daniel Pattaro. All rights reserved.
//

import UIKit

class ViewControllerMissioni: UIViewController {
    @IBOutlet weak var s1: UIButton!
    @IBOutlet weak var s2: UIButton!
    @IBOutlet weak var s3: UIButton!
    @IBOutlet weak var s4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        s1.isHidden=true
        s2.isHidden=true
        s3.isHidden=true
        s4.isHidden=true
        if (m1>0)
        {
            s1.isHidden=false
        }
        if (m2>0)
        {
            s2.isHidden=false
        }
        if (m3>0)
        {
            s3.isHidden=false
        }
        if (m4>0)
        {
            s4.isHidden=false
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
