//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
   
    @IBOutlet weak var diceImageView2: UIImageView!
   
    // Do any additional setup after loading the view.
    // #imageLiteral( to get the image literal for xcode 13
    // WHAT           WHO     VALUE
    //diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        // [Int.random(in: 0...5)] and randomElement() do the same thing
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray.randomElement()
    }
    
}

