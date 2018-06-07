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
    
    func CalculateScore() -> String {
        runningScore += 1
        let scoreAsString = String(runningScore)
        ScoreLabel.text = scoreAsString
        return scoreAsString
    }
    
    @IBAction func YellowCarPressed(_ sender: Any) {
        _ = CalculateScore()
    }
    
    @IBAction func EngineOffPressed(_ sender: Any) {
        let results = GameResultsVC()
        results.modalPresentationStyle = .custom
        present(results, animated: true, completion: nil)
        performSegue(withIdentifier: TO_GAME_RESULTS, sender: nil)
    }
}
