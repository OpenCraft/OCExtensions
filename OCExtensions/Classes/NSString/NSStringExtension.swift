//
//  NSStringExtension.swift
//  Pods
//
//  Created by Uriel Battanoli on 1/16/17.
//
//

import Foundation

extension NSString {
    
    func sizeOfText(for font: UIFont, width: Int) -> CGSize {
        let size = CGSize(width: width, height: Int.max)
        let att = [NSFontAttributeName : font]
        return self.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: att, context: nil).size
    }
    
    func sizeOfText(for font: UIFont, height: Int) -> CGSize {
        let size = CGSize(width: Int.max, height: height)
        let att = [NSFontAttributeName : font]
        return self.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: att, context: nil).size
    }
    
    func heightOfText(for font: UIFont, width: Int, minHeight: Int = 0, margin: Int = 4) -> Int {
        return max(minHeight, Int(sizeOfText(for: font, width: width).height) + margin)
    }
    
    func widthOfText(for font: UIFont, height: Int, minWidth: Int = 0, margin: Int = 4) -> Int {
        return max(minWidth, Int(sizeOfText(for: font, height: height).width) + margin)
    }
}
