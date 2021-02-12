//
//  ViewController.swift
//  Contest 2
//
//  Created by user183079 on 2/12/21.
//  Copyright © 2021 user183079. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var hasFilledField: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var emailField: UITextField!
    
    
    @IBAction func submit(_ sender: Any) {
        if(emailField.text != "") {
            performSegue(withIdentifier: "Submit", sender: nil)
            self.emailField.layer.borderColor = nil
            self.emailField.layer.borderWidth = 0
            self.emailField.text = ""
        } else {
            let myColor = UIColor.red
            
            
            
            UIView.animate(withDuration: 1, animations: {
                self.emailField.layer.borderColor = myColor.cgColor
                self.emailField.layer.borderWidth = 1.0
            })
        }
    }
}

