//
//  MiddleViewController.swift
//  Oreder Of Events
//
//  Created by Aitzhan Ramazan on 19.04.2024.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var middleVCLabel: UILabel!
    
    var eventNumber: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let actualText = middleVCLabel.text{
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber)"
            eventNumber += 1
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let actualText = middleVCLabel.text{
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber)"
            eventNumber += 1
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let actualText = middleVCLabel.text{
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber)"
            eventNumber += 1
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if let actualText = middleVCLabel.text{
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber)"
            eventNumber += 1
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if let actualText = middleVCLabel.text{
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber)"
            eventNumber += 1
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
