//
//  CircleButton.swift
//  Yellow Car
//
//  Created by Chris McDonald on 4/8/18.
//  Copyright © 2018 Chris McDonald. All rights reserved.
//

import UIKit

@IBDesignable
class CircleButton: UIButton {
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
