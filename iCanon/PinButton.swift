//
//  PinButton.swift
//  iCanon
//
//  Created by Michael Lema on 11/17/18.
//  Copyright © 2018 Michael Lema. All rights reserved.
//

import UIKit

class PinButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        modifyText()
    }
    
    var rotateCounterclockwise: Bool?  {
        didSet {
            self.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        }
    }
    
    func modifyText() {
        self.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
