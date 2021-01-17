//
//  ViewController.swift
//  Time & Date
//
//  Created by Arman Akash on 1/13/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.updateTimer()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }

   @objc func updateTimer() {
        let timeFormatter = DateFormatter()
    let dateFormatter = DateFormatter()
    timeFormatter.timeStyle = .full
    dateFormatter.dateStyle = .full
    timeLabel.text = timeFormatter.string(from: NSDate() as Date)
    dateLabel.text = dateFormatter.string(from: NSDate() as Date) 
    }

}

