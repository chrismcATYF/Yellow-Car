//
//  RoundedButton.swift
//  Yellow Car
//
//  Created by Chris McDonald on 4/8/18.
//  Copyright © 2018 Chris McDonald. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton : UIButton {
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
}
