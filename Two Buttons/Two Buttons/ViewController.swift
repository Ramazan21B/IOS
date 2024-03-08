//
//  ViewController.swift
//  Two Buttons
//
//  Created by Aitzhan Ramazan on 28.02.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    @IBAction func setTextButtonTapped(_ sender: Any) {
        label.text = textfield.text
    }
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        label.text = ""
        textfield.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

