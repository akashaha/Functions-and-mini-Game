//
//  ViewController.swift
//  Hiding Objects
//
//  Created by Arman Akash on 1/16/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func hideObjects(_ sender: Any) {
        label.isHidden = true
        button.isHidden = true
        segmentControl.isHidden = true
    }
    
    @IBAction func revelObjects(_ sender: Any) {
        
        label.isHidden = false
        button.isHidden = false
        segmentControl.isHidden = false
    }
    
    @IBAction func amIHidden(_ sender: Any) {
        
        if label.isHidden == true {
            label2.text = "The objecta are Hidden"
        }
        else{
            label2.text = "The objects are not Hidden"
        }
    }
    

}

