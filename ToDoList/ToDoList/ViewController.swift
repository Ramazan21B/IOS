//
//  ViewController.swift
//  ToDoList
//
//  Created by Aitzhan Ramazan on 27.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var textfield3: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addInfo(_ sender: Any){
        let defaults = UserDefaults.standard
        let personName = textfield.text!
        let personNumber = textfield2.text!
        let personInfo = textfield3.text!
        
        var newPerson = PersonInfo()
        
        newPerson.name = personName
        newPerson.number = personNumber
        newPerson.info = personInfo
        
        
        do {
            if let data = defaults.data(forKey: "personInfoArray"){
                var array = try JSONDecoder().decode([PersonInfo].self, from: data)
                
                array.append(newPerson)
                
                let encodeddata = try JSONEncoder().encode(array)
                
                defaults.set(encodeddata, forKey: "personInfoArray")
            } else {
                let encodeddata = try JSONEncoder().encode([newPerson])
                
                defaults.set(encodeddata, forKey: "personInfoArray")
            }
        } catch {
            print("unable to report \(error)")
        }
        textfield.text = ""
        textfield2.text = ""
        textfield3.text = ""
    }
    
}
