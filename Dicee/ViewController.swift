//
//  ViewController.swift
//  Dicee
//
//  Created by Rob Ranf on 6/30/19.
//  Copyright © 2019 Emiya Consulting. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    var randomDiceIndexLeft : Int = 0
    var randomDiceIndexRight : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceIndexLeft = Int(arc4random_uniform(6))
        randomDiceIndexRight = Int(arc4random_uniform(6))
        
        print("The left is: " + String(randomDiceIndexLeft))
        print("The right is: " + String(randomDiceIndexRight))
        
        diceImageViewLeft.image = UIImage(named: diceArray[randomDiceIndexLeft])
        diceImageViewRight.image = UIImage(named: diceArray[randomDiceIndexRight])
        
    }
    
}
