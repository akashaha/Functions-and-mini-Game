//
//  ViewController.swift
//  Tap ME Fast test
//
//  Created by Arman Akash on 1/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet weak var startGameButton: UIButton!
    
    var timer = Timer()
    var timerInt = 10
    var scoreInt = 0
    var gameInt = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startGameButton(_ sender: Any) {
        
        if timerInt == 10 {
            
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(startTimer), userInfo: nil, repeats: true)
            startGameButton.isEnabled = false
            startGameButton.alpha = 0.5
            
        }
        if gameInt == 1 {
            scoreInt += 1
            scoreLabel.text = String(scoreInt)
            
        }
        else{
            timerInt = 10
            scoreInt = 0
            timeLabel.text = String(timerInt)
            scoreLabel.text = String(scoreInt)
            
            startGameButton.setTitle("Start", for: UIControl.State.normal)
        }
       
            
        }
    
    
   @objc func startTimer(){
        
        timerInt -= 1
    timeLabel.text = String(timerInt)
    
    gameInt = 1
    
    startGameButton.isEnabled = true
    startGameButton.alpha = 1
    
    startGameButton.setTitle("Tap", for: UIControl.State.normal)
        
    if timerInt == 0 {
        
        timer.invalidate()
        startGameButton.isEnabled = false
        startGameButton.alpha = 0.5
        
        Timer.scheduledTimer(timeInterval: 4, target: self, selector: #selector(restart), userInfo: nil, repeats: false)
        
        startGameButton.setTitle("Restart", for: UIControl.State.normal)
    }
    
    
    }
    
    @objc func restart(){
        gameInt = 0
        startGameButton.isEnabled = true
        startGameButton.alpha = 1
        
    }
        
       

}

