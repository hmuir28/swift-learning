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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    func rollRandomly(dice: UIImageView) {
        let number = Int.random(in: 1...6)

        print("This is the value for => \(number)")
        
        switch number {
        case 1:
            dice.image = #imageLiteral(resourceName: "DiceOne")
        
        case 2:
            dice.image = #imageLiteral(resourceName: "DiceTwo")
            
        case 3:
            dice.image = #imageLiteral(resourceName: "DiceThree")
            
        case 4:
            dice.image = #imageLiteral(resourceName: "DiceFour")
        
        case 5:
            dice.image = #imageLiteral(resourceName: "DiceFive")
            
        case 6:
            dice.image = #imageLiteral(resourceName: "DiceSix")
            
        default:
            print("...")
        }
    }
    

    @IBAction func click(_ sender: Any) {
        rollRandomly(dice: diceImageView1)
        rollRandomly(dice: diceImageView2)
    }
}

