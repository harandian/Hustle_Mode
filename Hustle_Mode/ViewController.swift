//
//  ViewController.swift
//  Hustle_Mode
//
//  Created by Harandian on 2018-05-10.
//  Copyright © 2018 Hirad. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var darkBG: UIImageView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var clouds: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var activatedLbl: UILabel!
    @IBOutlet weak var hustleModeLbl: UILabel!
    @IBOutlet weak var skyBG: UIView!
    
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = Bundle.main.path(forResource: "hustle-on", ofType: ".wav")
        
        let url = URL(fileURLWithPath: path!)
        
        do { player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            
        } catch let error as NSError {
            print(error.description)
        }
        
        
        
    }
    
    @IBAction func powerBtnPressed(_ sender: Any) {
        
        print("test")
        
        darkBG.isHidden = true
        powerBtn.isHidden = true
        clouds.isHidden = false
        rocket.isHidden = false
        skyBG.isHidden = false
        
        player.play()
        
        
        UIView.animate(withDuration: 1.5, animations: {
            self.rocket.frame = CGRect(x: 0, y: 240, width: self.rocket.frame.width, height: self.rocket.frame.height)
        }) { (finished) in
            self.hustleModeLbl.isHidden = false
            self.activatedLbl.isHidden = false
        }
        
    }
    

 

}

