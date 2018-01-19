//
//  GuessingGame.swift
//  GuessingGame
//
//  Created by Cheng, Yaming on 2018-01-16.
//  Copyright © 2018 Cheng, Yaming. All rights reserved.
//

import Foundation

struct GuessingGame {
    
    //Properties
    var numberToGuess : Int
    
    //MARK: Initializer
    init() {
        //Generate the random number
        numberToGuess = Int(arc4random_uniform(501)) //Get a number between 0 and 500
    }
    //MARK: Function
    func checkGuessGiveFeedback(guess: Int) -> String {
        if guess < numberToGuess {
            return "Guess higher next time"
        } else if guess > numberToGuess {
            return "Guess lower next time."
        } else {
            return "Guess correctly"
        }
    }
}
