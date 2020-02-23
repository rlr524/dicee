//
//  ViewController.swift
//  Dicee
//
//  Updated by Rob Ranf on 1/24/20.
//  Copyright © 2020 Emiya Consulting. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    var randomDiceIndexLeft : Int = 0
    var randomDiceIndexRight : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    // Interface Builder outlet
    @IBOutlet weak var diceImageViewRight: UIImageView!
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        original code to show just one image with the alpha set to .5 transparent
//        diceImageViewLeft.alpha = 0.5
//        diceImageViewLeft.image = #imageLiteral(resourceName: "dice6")
//
//        diceImageViewRight.alpha = 0.5
//        diceImageViewRight.image = #imageLiteral(resourceName: "dice2")
        
        updateDiceImages()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    // Interface Builder action
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    func updateDiceImages() {
        
        randomDiceIndexLeft = Int.random(in: 0...5)
        randomDiceIndexRight = Int.random(in: 0...5)

        diceImageViewLeft.image = UIImage(named: diceArray[randomDiceIndexLeft])
        diceImageViewRight.image = UIImage(named: diceArray[randomDiceIndexRight])
        
//        original code to show dice image literals
//        diceImageViewRight.image = #imageLiteral(resourceName: "dice4")
//        diceImageViewLeft.image = #imageLiteral(resourceName: "dice4")

    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    
        updateDiceImages()
    
    }

}
