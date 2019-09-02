//
//  ViewController.swift
//  WarCardGame
//
//  Created by Milan Patel on 9/2/19.
//  Copyright © 2019 Milan Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet connections
    @IBOutlet weak var LeftImageView: UIImageView!
    @IBOutlet weak var RightImageView: UIImageView!
    @IBOutlet weak var PlayerScore: UILabel!
    @IBOutlet weak var DealerScore: UILabel!
    
    var playerscore = 0
    var dealerscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }


    //Dealer Button Function
    @IBAction func dealTapped(_ sender: Any) {
        
        //  Randomize Deal
        let leftNumber = Int(arc4random_uniform(13))+2
        let rightNumber = Int(arc4random_uniform(13))+2
        
        //  Display Randomized Deal
        LeftImageView.image = UIImage(named: "card\(leftNumber)")
        RightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            //Player Wins
            playerscore += 1
            
            PlayerScore.text = String(playerscore)
        }
        else if rightNumber > leftNumber {
            //Dealer Wins
            dealerscore += 1
            
            DealerScore.text = String(dealerscore)
        }
        else {
            //Tie
            
        }
        
        
        
        
    }
    
    
    
    

}

