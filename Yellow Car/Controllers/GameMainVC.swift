//
//  GameMainVC.swift
//  Yellow Car
//
//  Created by Chris McDonald on 4/8/18.
//  Copyright © 2018 Chris McDonald. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class GameMainVC: UIViewController {

    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var ResultsView: UIView!
    
    var runningScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ResultsView.isHidden = true
        ResultLabel.isHidden = true
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
        ScoreLabel.isHidden = true
        ResultsView.isHidden = false
        ResultLabel.isHidden = false
        ResultLabel.text = String(runningScore)
    }
    
    @IBAction func MainMenuButtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func HistoryButtonPressed(_ sender: Any) {
        
    }
}
