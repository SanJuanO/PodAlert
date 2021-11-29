//
//  RoundedButton.swift
//  Heartland Splenda
//
//  Created by Edgar Gerardo Flores Lopez on 21/09/20.
//  Copyright © 2020 Edgar Gerardo Flores Lopez. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton() {
        
        layer.cornerRadius = 21
        setTitleColor(.white, for: .normal)
    }
}
