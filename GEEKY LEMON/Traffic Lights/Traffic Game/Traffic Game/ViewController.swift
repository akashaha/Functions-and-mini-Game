//
//  ViewController.swift
//  Traffic Game
//
//  Created by Arman Akash on 1/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trafficLight: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    var starTimer = Timer()
    var scoreTimer = Timer()
    
    var timerInt = 0
    var scoreInt = 0

    
    @IBOutlet weak var startStopButton: UIButton!
    
    @IBOutlet weak var startstopButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    @IBAction func startStopButton(_ sender: Any) {
        
            
            if scoreInt == 0 {
                
                timerInt = 3
                
                trafficLight.image = UIImage(named: "trafficLight")
                
                starTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
                
                scoreLabel.text = String(scoreInt)
                
                startStopButton.isEnabled = false
                startStopButton.setTitle("", for: UIControl.State.normal)
                
            } else {
                
                scoreTimer.invalidate()
                
                scoreInt = 0
                
                startStopButton.setTitle("Restart", for: UIControl.State.normal)
                
            }
            
            
        }
    
    @objc func updateTimer(){
        timerInt -= 1
        
        if timerInt == 2 {
            
            trafficLight.image = UIImage(named: "trafficLight3")
            
        } else if timerInt == 1 {
            
            trafficLight.image = UIImage(named: "trafficLight2")
            
        } else if timerInt == 0 {
            
            trafficLight.image = UIImage(named: "trafficLight1")
            
            starTimer.invalidate()
            
            scoreTimer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(updateScore), userInfo: nil, repeats: true)
            
            startStopButton.isEnabled = true
            startStopButton.setTitle("Stop", for: UIControl.State.normal)
            
        }
        
    }
    
    @objc func updateScore() {
        scoreInt += 1
        scoreLabel.text = String(scoreInt)
    }
    
}

