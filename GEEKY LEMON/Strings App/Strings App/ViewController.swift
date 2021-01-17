//
//  ViewController.swift
//  Strings App
//
//  Created by Arman Akash on 1/12/21.
//

import UIKit

class ViewController: UIViewController {

    var name : String = "Akash"
    var food : String = "Burger"
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPresed(_ sender: UIButton) {
        textLabel.text = "\(name) love \(food)"
    }
    
}

