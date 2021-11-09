//
//  ViewController.swift
//  Piso Flip
//
//  Created by Marvin Louie on 20/01/2019.
//  Copyright © 2019 Marvin Louie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomCoinImage : Int = 0
    let coinArray = ["heads", "tails"]
    @IBOutlet weak var coinFace: UIImageView!
    override func viewDidLoad() {
        coinFlip()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func flipBtn(_ sender: UIButton) {
        coinFlip()
    }
    
    func coinFlip(){
        randomCoinImage = Int(arc4random_uniform(2))
        coinFace.image = UIImage(named: coinArray[randomCoinImage])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        coinFlip()
    }
}

