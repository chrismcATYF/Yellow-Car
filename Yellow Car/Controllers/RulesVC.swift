//
//  RulesVC.swift
//  Yellow Car
//
//  Created by Chris McDonald on 4/8/18.
//  Copyright © 2018 Chris McDonald. All rights reserved.
//

import UIKit

class RulesVC: UIViewController {

    @IBOutlet weak var rulesStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func CloseButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
