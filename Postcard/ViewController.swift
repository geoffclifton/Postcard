//
//  ViewController.swift
//  Postcard
//
//  Created by Geoff Clifton on 2014-12-09.
//  Copyright (c) 2014 Geoff Clifton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMesageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // new comment for second commit
        messageLabel.hidden = false
        messageLabel.text = enterMesageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = "To: " + enterNameTextField.text;
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        
        enterMesageTextField.text = ""
        enterMesageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }


}

