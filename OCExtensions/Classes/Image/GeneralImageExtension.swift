//
//  GeneralImageExtension.swift
//  Pods
//
//  Created by Henrique Morbin on 05/08/16.
//
//

import UIKit

public extension UIImage {
    
    convenience public init?(color: UIColor, size: CGSize? = nil) {
        
        let size = size ?? CGSize(width: 1, height: 1)
        let rect = CGRect(origin: CGPoint.zero, size: size)
        
        UIGraphicsBeginImageContext(size)
        let path = UIBezierPath(rect: rect)
        color.setFill()
        path.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        if let cgImage = image?.cgImage {
            self.init(cgImage: cgImage)
        } else {
            return nil
        }
    }
    
    func insets(to insetable: Insetable) -> UIImage {
        
        let insets = insetable.getEdgeInset()
        
        let width = size.width + insets.left + insets.right
        let height = size.height + insets.top + insets.bottom
        let newSize = CGSize(width: width, height: height)
        
        UIGraphicsBeginImageContextWithOptions(newSize, false, self.scale)
        
        let origin = CGPoint(x: insets.left, y: insets.top)
        draw(at: origin)
        
        let imageWithInsets = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return imageWithInsets
    }
    
}

public protocol Insetable {
    func getEdgeInset() -> UIEdgeInsets
}

extension CGFloat: Insetable {
    public func getEdgeInset() -> UIEdgeInsets {
        return UIEdgeInsets(top: self, left: self, bottom: self, right: self)
    }
}

extension UIEdgeInsets: Insetable {
    public func getEdgeInset() -> UIEdgeInsets {
        return self
    }
}
