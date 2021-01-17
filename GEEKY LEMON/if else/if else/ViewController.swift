//
//  ViewController.swift
//  if else
//
//  Created by Arman Akash on 1/12/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNametexyField: UITextField!
    
    @IBOutlet weak var secoundNameTextField: UITextField!
    
    @IBOutlet weak var messageLAbel: UILabel!
    
    var firstNAme = "Arman"
    var lastNAme = "Akash"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        if firstNametexyField.text == firstNAme && secoundNameTextField.text == lastNAme {
           // print("Welcome Arman Akash")
            messageLAbel.text = "Welcome Arman Akash"
        }
        
        else if(firstNametexyField.text
                    != firstNAme && secoundNameTextField.text != lastNAme) {
           // print("Both name are wrong")
            messageLAbel.text = "Both name are wrong"
    
}
        else if(firstNametexyField.text
                    == firstNAme ) {
            messageLAbel.text = "last name incurrect"
        }
        else{
            messageLAbel.text = "first name incurrect"
           // print("first name incurrect")
        }

    }
}
