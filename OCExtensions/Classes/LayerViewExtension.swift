//
//  LayerViewExtension.swift
//  Pods
//
//  Created by Henrique Morbin on 03/08/16.
//
//

import Foundation

extension UIView {
    
    @IBInspectable var corner: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor {
        get {
            return UIColor(CGColor: layer.borderColor ?? UIColor.clearColor().CGColor)
        }
        set {
            layer.borderColor = newValue.CGColor
        }
    }
    
}