//
//  LabelExtension.swift
//  Pods
//
//  Created by Cristian Madrid on 12/27/16.
//
//

import UIKit

public extension UILabel {
    
    public func setAttributedText(title: String) {
        
        var range = NSRange(location: 1, length: 1)
        attributedText = NSMutableAttributedString(string: title, attributes: attributedText?.attributes(at: 0, effectiveRange: &range))
    }
    
    var textValue: String {
        return self.text ?? ""
    }
}
