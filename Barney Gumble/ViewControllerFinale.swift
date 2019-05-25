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
        if(cnt>100)
        {
            if (m1==0)
            {defaults.set(1, forKey: "Spunta1")}
           else if (m1==1)
            {
            defaults.set(2, forKey: "Spunta1")
            }
            
        }
        if(cnt>200)
        {
            if (m2==0)
            {defaults.set(1, forKey: "Spunta2")}
            else if (m2==1)
            {
                defaults.set(2, forKey: "Spunta2")
            }        }
        if(cnt>300)
        {
            if (m3==0)
            {defaults.set(1, forKey: "Spunta3")}
            else if (m3==1)
            {
                defaults.set(2, forKey: "Spunta3")
            }        }
        if(cnt>400)
        {
            if (m4==0)
            {defaults.set(1, forKey: "Spunta4")}
            else if (m4==1)
            {
                defaults.set(2, forKey: "Spunta4")
            }
        }
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
