//
//  GeneralTextFieldExtensions.swift
//  Pods
//
//  Created by Henrique Morbin on 14/08/16.
//
//

import UIKit

public extension UITextField {
    
    public var textValue: String {
        return text ?? ""
    }
    
    public var isEmpty: Bool {
        return textValue.isEmpty
    }
    
    public var paddingLeft: CGFloat {
        set {
            if let searchBarClass = NSClassFromString("UISearchBarTextField") {
                if self.isKind(of: searchBarClass) {
                    return
                }
            }
        
            leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: newValue, height: 1.0))
            leftViewMode = .always
        }
        get {
            return self.leftView?.frame.width ?? 0
        }
    }
    
    public var paddingRight: CGFloat {
        set {
            if let searchBarClass = NSClassFromString("UISearchBarTextField") {
                if self.isKind(of: searchBarClass) {
                    return
                }
            }
            
            rightView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: newValue, height: 1.0))
            rightViewMode = .always
        }
        get {
            return self.rightView?.frame.width ?? 0
        }
    }
    
}
