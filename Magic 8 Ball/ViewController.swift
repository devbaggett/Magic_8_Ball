//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Devin Baggett on 5/15/18.
//  Copyright © 2018 devbaggett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var answerArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    func updateBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: answerArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }

}

