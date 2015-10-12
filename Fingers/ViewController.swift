//
//  ViewController.swift
//  Fingers
//
//  Created by Cein Markey on 9/13/15.
//  Copyright © 2015 Cein Markey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userGuess: UITextField!
    
    
    @IBOutlet var response: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitGuess(sender: AnyObject) {
        let guess = String(arc4random_uniform(6))
        
        if guess == userGuess.text {
            response.text = "Correct! It was " + userGuess.text! + "!"
        } else if userGuess.text == "" {
            response.text = "Sorry, you need to make a guess!";
        } else {
            response.text = "Wrong! It was " + guess + "!"
        }
        
    }

}

