//
//  Utilities.swift
//  Travail
//
//  Created by Saravana on 30/08/18.
//

import UIKit

class Utilities: NSObject {

    static let shared = Utilities()
    
    //MARK: -Color from RGB
    func UIColorFromRGB(_ rgbValue :UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
