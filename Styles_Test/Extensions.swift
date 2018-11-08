//
//  Extensions.swift
//  Styles_Test
//
//  Created by Pyeatt, Ryan on 10/31/18.
//  Copyright © 2018 Ryan Pyeatt. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func hexStringToUIColor(_ hex: String, alpha: Double = 1.0) -> UIColor { // Hex with format: "#ffffff" or "ffffff"
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
}

