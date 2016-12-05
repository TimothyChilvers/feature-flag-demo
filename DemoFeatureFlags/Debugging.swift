//
//  Debugging.swift
//  DemoFeatureFlags
//
//  Created by Sam Watts on 05/12/2016.
//  Copyright © 2016 Testing. All rights reserved.
//

import UIKit

extension UIColor {
    
    class var random: UIColor {
        
        let hue = ( Double(Double(arc4random()).truncatingRemainder(dividingBy: 256.0) ) / 256.0 )
        let saturation = ( (Double(arc4random()).truncatingRemainder(dividingBy: 128)) / 256.0 ) + 0.5
        let brightness = ( (Double(arc4random()).truncatingRemainder(dividingBy: 128)) / 256.0 ) + 0.5
        
        return UIColor(hue: CGFloat(hue), saturation: CGFloat(saturation), brightness: CGFloat(brightness), alpha: 1.0)
    }
}

extension UIView {
    
    func mark(withColor color: UIColor = .random) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = 1.0
    }
}
