//
//  ViewController.swift
//  retro-calculator
//
//  Created by DANIEL OREILLY on 11/26/15.
//  Copyright © 2015 DANIEL OREILLY. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var outputLbl: UILabel!
    
    var btnSound: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        

    }

    @IBAction func numberPressed(btn: UIButton!) {
        btnSound.play()
    }

}

