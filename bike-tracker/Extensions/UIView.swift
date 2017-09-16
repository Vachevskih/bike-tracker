//
//  UIButton.swift
//  bike-tracker
//
//  Created by Vladimir Benkevich on 16/09/2017.
//  Copyright © 2017 ibuka. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    @IBInspectable
    dynamic public var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
