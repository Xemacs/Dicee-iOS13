//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var rollButtonView: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    let diceImages = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rollDice(imageView: diceImageViewOne);
        rollDice(imageView: diceImageViewTwo);
    }
    
    @IBAction func rollButtonPress(_ sender: UIButton) {
        rollDice(imageView: diceImageViewOne);
        rollDice(imageView: diceImageViewTwo);
    }
    
    func rollDice(imageView: UIImageView) {
        imageView.image =  diceImages[Int.random(in: 0...diceImages.count-1)];
    }
}
