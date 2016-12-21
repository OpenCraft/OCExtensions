//
//  GeneralButtonExtension.swift
//  Pods
//
//  Created by Henrique Morbin on 21/12/16.
//
//

import Foundation

public extension UIButton {
    
    @IBInspectable public var normalBackgroundColor: UIColor {
        get {
            return self.normalBackgroundColor
        }
        set {
            setBackgroundImage(newValue.image(), for: .highlighted)
        }
    }
    
    @IBInspectable public var highlightedBackgroundColor: UIColor {
        get {
            return self.highlightedBackgroundColor
        }
        set {
            setBackgroundImage(newValue.image(), for: .highlighted)
        }
    }
    
    @IBInspectable public var selectedBackgroundColor: UIColor {
        get {
            return self.selectedBackgroundColor
        }
        set {
            setBackgroundImage(newValue.image(), for: .selected)
        }
    }
    
    @IBInspectable public var disabledBackgroundColor: UIColor {
        get {
            return self.disabledBackgroundColor
        }
        set {
            setBackgroundImage(newValue.image(), for: .disabled)
        }
    }
    
}
