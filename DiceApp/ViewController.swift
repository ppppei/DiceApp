//
//  ViewController.swift
//  DiceApp
//
//  Created by PPEI on 9/13/2564 BE.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imgOne: UIImageView!
    
    
    @IBOutlet weak var imgTwo: UIImageView!
    
    @IBOutlet weak var lblScore: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func below7Pressed(_ sender: Any) {
        let one = Int.random(in: 1...6)//define one
        let two = Int.random(in: 1...6)//define two
        
        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        //name of the image of random number
        
        imgOne.image = UIImage(named: imgOneName)
        imgTwo.image = UIImage(named: imgTwoName)
        
        if one + two < 7{
            score += 1
        }else{
            score -= 1
        }
        lblScore.text = "score = \(score)"
    }
    
    @IBAction func lucky7Pressed(_ sender: Any) {
        let one = Int.random(in: 1...6)//define one
        let two = Int.random(in: 1...6)//define two

        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        //name of the image of random number

        imgOne.image = UIImage(named: imgOneName)
        imgTwo.image = UIImage(named: imgTwoName)

        if one + two == 7{
            score += 7
        }else{
            score -= 1
        }
        lblScore.text = "score = \(score)"
    }
    
    @IBAction func above7Pressed(_ sender: Any) {
        let one = Int.random(in: 1...6)//define one
        let two = Int.random(in: 1...6)//define two

        let imgOneName = "Dice\(one)"
        let imgTwoName = "Dice\(two)"
        //name of the image of random number

        imgOne.image = UIImage(named: imgOneName)
        imgTwo.image = UIImage(named: imgTwoName)
        
        if one + two > 7{
            score += 1
        }else{
            score -= 1
        }
        lblScore.text = "score = \(score)"
    }
    
}

