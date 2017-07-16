//
//  ViewController.swift
//  RunnersApp
//
//  Created by Zhe Chen on 7/15/17.
//  Copyright © 2017 Zhe Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var playBtn: UIButton!
    
    var timer = Timer()
    var time = 0
    var buttonState = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playBtn.layer.cornerRadius = 15.0
        playBtn.layer.borderWidth = 2.0
        playBtn.layer.borderColor = UIColor.white.cgColor
       
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playButtonTapped(_ sender: Any) {
        
        if buttonState{
            playBtn.setTitle("Pause", for: [])
            buttonState = false
       
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.addToTime), userInfo: nil, repeats: true)
        
        }else{
            playBtn.setTitle("Play", for: [])
            buttonState = true
            
            timer.invalidate()

        }
    }
    
    @IBAction func stoptapped(_ sender: Any) {
        timer.invalidate()
        time = 0
        timeLabel.text = "0"
    }
   
    @IBAction func resetTapped(_ sender: Any) {
        timer.invalidate()
        time = 0
        timeLabel.text = "0"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.addToTime), userInfo: nil, repeats: true)

    }
    
    func addToTime() {
        time = time + 1
        timeLabel.text = "\(time)"
    }
    
}









