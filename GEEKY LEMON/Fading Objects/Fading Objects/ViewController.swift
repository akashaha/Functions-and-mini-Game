//
//  ViewController.swift
//  Fading Objects
//
//  Created by Arman Akash on 1/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var segControl: UISegmentedControl!
    
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fadeIn(_ sender: Any) {
        UIView.animate(withDuration: 1.0, animations: {
            
            self.label.alpha = 1
            self.button.alpha = 1
            self.segControl.alpha = 1
            
        })
        
    }
    
    @IBAction func fadeOut(_ sender: Any) {
        UIView.animate(withDuration: 1.0, animations: {
            self.label.alpha = 0
            self.button.alpha = 0
            self.segControl.alpha = 0
        })
        
    }
    
    @IBAction func alfaSlider(_ sender: Any) {
        label.alpha = CGFloat(slider.value)
        button.alpha = CGFloat(slider.value)
        segControl.alpha = CGFloat(slider.value)
    }
    
    
}

