//
//  customLabel.swift
//  MobileLevel0
//
//  Created by Daniel Avram on 23/11/2016.
//  Copyright © 2016 Daniel Avram. All rights reserved.
//

import UIKit

class customLabel: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func drawText(in rect: CGRect) {
        let rectangle = CGRect(x: 8.0, y: 0.0, width: rect.width - 8.0, height: rect.height)
        super.drawText(in: rectangle)
    }

}
