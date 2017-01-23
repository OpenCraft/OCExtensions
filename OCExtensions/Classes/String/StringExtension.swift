//
//  StringExtension.swift
//  Pods
//
//  Created by Uriel Battanoli on 1/16/17.
//
//

import Foundation

public extension String {
    
    public func sizeOfText(for font: UIFont, width: Int) -> CGSize {
        return NSString(string: self).sizeOfText(for: font, width: width)
    }
    
    public func sizeOfText(for font: UIFont, height: Int) -> CGSize {
        return NSString(string: self).sizeOfText(for: font, height: height)
    }
    
    public func heightOfText(for font: UIFont, width: Int, minHeight: Int = 0, margin: Int = 4) -> Int {
        return NSString(string: self).heightOfText(for: font, width: width, minHeight: minHeight, margin: margin)
    }
    
    public func widthOfText(for font: UIFont, height: Int, minWidth: Int = 0, margin: Int = 4) -> Int {
        return NSString(string: self).widthOfText(for: font, height: height, minWidth: minWidth, margin: margin)
    }
}
