//
//  ViewController.swift
//  GuessingGame
//
//  Created by Cheng, Yaming on 2018-01-13.
//  Copyright © 2018 Cheng, Yaming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: outlets
    @IBOutlet weak var numberGuessed: UITextField!
    
    //MARK: Properties (variables)
    var game = GuessingGame()
    
    //MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("The number to guess is:")
        print(game.numberToGuess)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: Actions
    @IBAction func guessSubmitted(_ sender: Any) {
        //print the number that was guessed
        print(numberGuessed.text)
        //use a guard statement to bind to a non-optional variable
        guard let inputGiven = numberGuessed.text else {
            //If the input was nil, stop ans return (exit) the function
            return
        }
        //Use a guard statement to attempt to create an integer
        guard let integerGiven = Int(inputGiven) else {
            //If the input was text (e.g. "five") we can't make an integer, so stop and return (exit) the function
            return
        }
        //print the number that was guessed again
        print(integerGiven)
    
    //The number to guess is
    print("The number to guess is:")
    print(game.numberToGuess)
        
    }
    //MARK: Custom function(s)

}

