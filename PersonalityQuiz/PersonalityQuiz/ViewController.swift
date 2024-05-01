//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by Aitzhan Ramazan on 20.04.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startQuizPressed(_ sender: Any) {
        performSegue(withIdentifier: "StartQuiz" , sender: nil)
    }
    @IBAction func unwindToIntroVC(segue: UIStoryboardSegue )
    }
}

