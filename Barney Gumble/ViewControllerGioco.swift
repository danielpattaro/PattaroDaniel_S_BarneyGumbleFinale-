//
//  ViewControllerGioco.swift
//  Barney Gumble
//
//  Created by Daniel Pattaro on 08/05/2019.
//  Copyright © 2019 Daniel Pattaro. All rights reserved.
//

import UIKit
var img = UIImageView(image: #imageLiteral(resourceName: "duff"))
//let imgice = UIImageView(image: #imageLiteral(resourceName: "duffice"))
//let imgfire = UIImageView(image: #imageLiteral(resourceName: "dufffire"))
//let imgstand = UIImageView(image: #imageLiteral(resourceName: "duff"))
var vite=0;
var cnt=0
var cntPrecedente=0
var colpito = 0
let defaults = UserDefaults.standard

class ViewControllerGioco: UIViewController {
    @IBOutlet weak var ciambella: UIButton!
    
    @IBOutlet weak var barney: UIButton!
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var spaziogen: UIImageView!
    @IBOutlet weak var dm: UILabel!
    @IBOutlet weak var termina: UIButton!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        img.tag = 100
        view.bringSubviewToFront(spaziogen)
        vite=5
        diff=diff+0.1
        termina.isHidden=true
        img.isHidden=false
        img.isHidden=false
        colpito=0
        
        guard let punt=defaults.object(forKey: "Record")  else {
            cntPrecedente=0
            return
        }
        if cntPrecedente>0
        {cntPrecedente=punt as! Int}
        
        appareDuff()
    }
    var diff = 0.1
    var ap=0.1
   
//    @IBAction func prova(_ sender: Any) {
//        dismiss(animated: false)
//    }
    @objc func hide()
    {
        self.dm.isHidden=true
    }

    func levavita()
    {
        img.removeFromSuperview()
        if vite>0
        {
            if vite==4
            {
                self.ciambella.setImage(#imageLiteral(resourceName: "ciambella3"), for: UIControl.State.normal)
            }
            if vite==3
            {
                self.ciambella.setImage(#imageLiteral(resourceName: "ciambella2"), for: UIControl.State.normal)
            }
            if vite==2
            {
                self.ciambella.setImage(#imageLiteral(resourceName: "ciambella1"), for: UIControl.State.normal)
            }
            if vite==1
            {
                self.ciambella.isHidden=true
                img = UIImageView(image: #imageLiteral(resourceName: "duff"))
                self.termina.isHidden=false
                img.isHidden=true
            }
            vite=vite-1
        }
        else
        {
            img = UIImageView(image: #imageLiteral(resourceName: "duff"))
            self.termina.isHidden=false
            img.isHidden=true
            
            
        }
    }
    
    func appareDuff ()
    {
        let lmax = Int(spaziogen.frame.width)
        let amax = Int(spaziogen.frame.height)
        var assex = Int.random(in: 0...lmax - 80)
        var assey = Int.random(in: 0...amax - 80)
        let metàX = CGFloat(img.frame.width/2)
        let metàY = CGFloat(img.frame.height/2)
        img.frame = CGRect(x: Double(assex), y: Double(assey), width: 80, height: 80)
        self.spaziogen.addSubview(img)
        UIView.animate(withDuration: 5 - diff, animations: {
            img.center = CGPoint(x: (img.frame.maxX - metàX) + 0.0001, y:  (img.frame.maxY - metàY) + 0.0001)
        }) { (Bool) in
            print(vite)
        //    vita = Timer.scheduledTimer(timeInterval:5 - self.diff , target: self, selector: #selector(self.vitaf), userInfo: nil, repeats: false)
            if colpito == 0
            {
                self.levavita()
                
            }
            if vite > 0
            {
                colpito = 0
                self.appareDuff()
            }
            
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     //   vita = Timer.scheduledTimer(timeInterval:0 , target: self, selector: #selector(self.vitaf), userInfo: nil, repeats: false)
        
            if let touch = touches.first{
              //  let timer = Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(hide), userInfo: nil, repeats: true)
                
            let posizione = touch.location(in: spaziogen)
            if img.frame.contains(posizione) && img.tag==100
            {
                colpito = 1
                img.removeFromSuperview()
                cnt=cnt+1
                counter.text=String(cnt)
                if (cnt%10==0)
                {
                    dm.isHidden=false
                    if (diff<4)
                    {diff=diff+0.5}
                    
                }
                if (cnt%50==0)
                {
                    var image = UIImage(imageLiteralResourceName: "duffice")
                    img.image = image
                    UIView.transition(with: img, duration: 0.6, options: .transitionCrossDissolve, animations: nil, completion: nil)
                   // img=imgice
                    ap=diff
                    diff=2
                    img.tag=100
                }
                
                if (cnt%59==0)
                {
                var image = UIImage(imageLiteralResourceName: "dufffire")
                    img.image = image
                    UIView.transition(with: img, duration: 0.6, options: .transitionCrossDissolve, animations: nil, completion: nil)
                    //img=imgfire
                    img.tag=100

                }
                if (cnt%60==0)
                {
                    var image = UIImage(imageLiteralResourceName: "duff")
                    img.image = image
                    UIView.transition(with: img, duration: 0.6, options: .transitionCrossDissolve, animations: nil, completion: nil)
                    //img=imgstand
                    diff=ap
                    img.tag=100

                }
            }
            else
            {
                colpito = 1
                img.removeFromSuperview()
                self.levavita()
            }
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
