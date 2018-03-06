//
//  Tile.swift
//  2048_of_Life
//
//  Created by Eric Lehmann on 3/5/18.
//  Copyright © 2018 MysterE3. All rights reserved.
//

import UIKit

class Tile: UIView {
    var delegate: AppearanceProtocol
    var value: Int = 0 {
        didSet {
            backgroundColor = delegate.tileColor(value)
            numberLabel.textColor = delegate.numberColor(value)
            numberLabel.text = "\(value)"
        }
    }
    var numberLabel: UILabel
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    init(position: CGPoint, width: CGFloat, value: Int, radius: CGFloat, delegate d: AppearanceProtocol) {
        addSubview(numberLabel)
        layer.cornerRadius = radius
        
        self.value = value
        backgroundColor = delegate.tileColor(value)
        numberLabel.textColor = delegate.numberColor(value)
        numberLabel.text = "\(value)"
    }
}

