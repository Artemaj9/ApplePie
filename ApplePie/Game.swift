//
//  Game.swift
//  ApplePie
//
//  Created by Artem on 27.08.2023.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    var points: Int
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        for trueLetter in word {
            if trueLetter == letter {
                points += 1
            }
        }
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
    mutating func pointsLogic() {
        
    }
}
