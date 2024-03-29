//
//  ViewController.swift
//  Dicee
//
//  Created by Daryus on 2019-03-06.
//  Copyright © 2019 Daryus Lung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    var prevDiceIndex1: Int = 0
    var prevDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        prevDiceIndex1 = randomDiceIndex1
        prevDiceIndex2 = randomDiceIndex2
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
        diceImageView3.image = UIImage(named: diceArray[prevDiceIndex1])
        diceImageView4.image = UIImage(named: diceArray[prevDiceIndex2])
    }
    
}

