//
//  ResultsVC.swift
//  PersonalityQuiz
//
//  Created by Aitzhan Ramazan on 21.04.2024.
//

import UIKit

class ResultsVC: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var resultDefintion: UILabel!
    var responses: [Answer]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    
    func calculatePersonalityResult() {
        let frequencyOfAnswers = responses.reduce(into: [:]) {
            (counts, answer) in
                counts[answer.type, default: 0] += 1
            }
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
        { (pair1, pair2) in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 >
           $1.1 }.first!.key
        
        resultLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefintion.text = mostCommonAnswer.definition
        
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
