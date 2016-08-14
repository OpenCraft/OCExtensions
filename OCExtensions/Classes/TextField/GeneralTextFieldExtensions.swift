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
    
}
