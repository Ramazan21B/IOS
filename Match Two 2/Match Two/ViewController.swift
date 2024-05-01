//
//  ViewController.swift
//  Match Two
//
//  Created by Aitzhan Ramazan on 25.04.2024.
//

import UIKit

    class ViewController: UIViewController {
    var anotherButtonTag = 0
    var isOpened = false
    var counter = 0
    var setTimer = false
    var state = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    var imageArray = [
        "Fast x", "Fast x",
        "Godzilla vs Kong", "Godzilla vs Kong",
        "knifes_out.png", "knifes_out.png",
        "Oppenheimer", "Oppenheimer",
        "potter", "potter",
        "Scream 6", "Scream 6",
        "shoushenk", "shoushenk",
        "Wednesday", "Wednesday"
    ]
    var winArray: [[Int]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageArray.shuffle()
        winArray.removeAll()
        for i in 0...15{
            for j in 0...15{
                if imageArray[i] == imageArray[j] && i != j{
                    winArray.append([i, j])
                }
            }
        }
    }
    @IBAction func match_two(_ sender: UIButton) {
        
        if state[sender.tag - 1] != 0 || isOpened {
            return
        }

        state[sender.tag - 1] = 1

        sender.setBackgroundImage(UIImage(named: imageArray[sender.tag - 1]), for: .normal)

        var count1 = 0
        var count2 = 0

        for i in 0...15{
            if state[i] == 1 {
                count1 += 1
            }
            if state[i] == 2 {
                count2 += 1
            }
        }

        if count1 == 2 {
            _ = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
                self.clearing()
            }
        }
        
        for wins in winArray {
            if state[wins[0]] == 1 && state[wins[1]] == 1 {
                state[wins[0]] = 2
                state[wins[1]] = 2
                counter += 1
            }
        }

        if counter == 8 {
            alert()
        }
        
        print(count2)
    }
        
        @objc func clearing(){
            isOpened = false
            for i in 0...15{
                if state[i] == 1{
                    let button = view.viewWithTag(i+1) as! UIButton
                    button.setBackgroundImage(nil, for: .normal)
                    state[i] = 0
                }
            }
        }
    
    func alert() {
        let alert = UIAlertController(title: "You won", message: "Do you want to play again", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.clear()
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    func clear() {
        counter = 0
        for i in 0...15 {
            let button = view.viewWithTag(i + 1) as! UIButton
            button.setBackgroundImage(nil, for: .normal)
        }
    }
}

