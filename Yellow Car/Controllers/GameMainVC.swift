//
//  GameMainVC.swift
//  Yellow Car
//
//  Created by Chris McDonald on 4/8/18.
//  Copyright © 2018 Chris McDonald. All rights reserved.
//

import UIKit

class GameMainVC: UIViewController {

    @IBOutlet weak var ScoreLabel: UILabel!
    
    var runningScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func YellowCarPressed(_ sender: Any) {
        runningScore += 1
        let scoreAsString = String(runningScore)
        ScoreLabel.text = scoreAsString
    }
    @IBAction func EngineOffPressed(_ sender: Any) {
        performSegue(withIdentifier: "GameResultsVC", sender: Any?.self)
        let finalScore = runningScore
    }
}
