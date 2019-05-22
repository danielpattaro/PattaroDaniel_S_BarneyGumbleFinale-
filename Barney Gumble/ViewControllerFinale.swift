//
//  ViewControllerFinale.swift
//  Barney Gumble
//
//  Created by Daniel Pattaro on 08/05/2019.
//  Copyright © 2019 Daniel Pattaro. All rights reserved.
//

import UIKit

class ViewControllerFinale: UIViewController {

    @IBOutlet weak var barney: UIButton!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var nrc: UIButton!
    @IBOutlet weak var rcpr: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        barney.isHidden=true
        nrc.isHidden=true
        rcpr.text=String(cntPrecedente)
        rcat.text=String(cnt)
        if (cnt>cntPrecedente)
        {
            cntPrecedente=cnt
            barney.isHidden=false
           lbl.text="Barney è fiero del tuo nuovo record!"
            defaults.set(cntPrecedente, forKey: "Record")
        }
        else{
            nrc.isHidden=false
            lbl.text="Hai fatto annoiare Barney!"
        }
        
        cnt=0
    }
    @IBOutlet weak var rcat: UILabel!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
