//
//  ViewController.swift
//  Login
//
//  Created by Aitzhan Ramazan on 07.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextfield: UITextField!
    
    @IBAction func forgotUserNameField(_ sender: Any) {
        performSegue(withIdentifier: "LoginToLandingSegue", sender: sender)
    }
    
    @IBAction func forgotPasswordField(_ sender: Any) {
        performSegue(withIdentifier: "LoginToLandingSegue", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = usernameTextfield.text
    }



}

