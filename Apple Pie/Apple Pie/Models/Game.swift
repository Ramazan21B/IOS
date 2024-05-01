//
//  Game.swift
//  Apple Pie
//
//  Created by Aitzhan Ramazan on 29.03.2024.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String{
        var guessedWord = ""
        for letter in word{
            if guessedWord.contains(letter){
                guessedWord += "\(letter)"
            } else{
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    mutating func playerGuessed(letter: Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
}
