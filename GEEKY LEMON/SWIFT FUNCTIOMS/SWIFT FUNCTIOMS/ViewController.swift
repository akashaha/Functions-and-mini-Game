//
//  ViewController.swift
//  SWIFT FUNCTIOMS
//
//  Created by Arman Akash on 1/13/21.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      textView.text = "Hey"
        
    }


    @IBAction func pressMeTapped(_ sender: UIButton) {
        textView.text = """
        Hello Akash,
        How are you?
        """
    }
    
    
    @IBAction func enterText(_ sender: Any) {
        titleLabel.text = textField.text
        self.resignFirstResponder()
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    @IBAction func setColor(_ sender: Any) {
        titleLabel.textColor = UIColor.red
        
    }
    
    @IBAction func setBackground(_ sender: Any) {
        titleLabel.backgroundColor = UIColor.lightGray
    }
    
    @IBAction func setShadow(_ sender: Any) {
        titleLabel.layer.shadowColor = UIColor.blue.cgColor
        titleLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        
        titleLabel.layer.shadowRadius = 2
        titleLabel.layer.shadowOpacity = 0.25
    }
    
    @IBAction func setShadowColor(_ sender: Any) {
        titleLabel.layer.shadowColor = UIColor.blue.cgColor
    }
    
    
    @IBAction func fontSize(_ sender: Any) {
        textView.font = UIFont(name: "Avenir Book",size: 30)
    }
    
    @IBAction func center(_ sender: Any) {
        titleLabel.textAlignment = NSTextAlignment.center
    }
    
    
    @IBAction func left(_ sender: Any) {
        titleLabel.textAlignment = NSTextAlignment.left
    }
    
    @IBAction func right(_ sender: Any) {
        titleLabel.textAlignment = NSTextAlignment.right
    }
    
    @IBAction func customFont(_ sender: Any) {
        textView.font = UIFont(name: "BlackHouseScript", size: 30)
    }
}

