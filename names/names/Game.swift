//
//  Game.swift
//  Names
//
//  Created by anatoly on 10.01.2021.
//

import Foundation

struct Game {
    
    let word: String
    
    var numberOfLives: Int
    
    var selectedLetters: [Character]
    
    var currentWord: String {
        
        var currentWord: String = ""
        
        for letter in word {
            if selectedLetters.contains(letter) {
                currentWord.append(letter)
            } else {
                currentWord += "_"
            }
        }

        return currentWord
    }
}
