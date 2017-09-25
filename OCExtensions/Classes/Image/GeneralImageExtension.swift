//
//  GeneralImageExtension.swift
//  Pods
//
//  Created by Henrique Morbin on 05/08/16.
//
//

import UIKit

public extension UIImage {
    
    var isPortrait: Bool { return size.height > size.width }
    var isLandscape: Bool { return size.width > size.height }
    var breadth: CGFloat { return min(size.width, size.height) }
    var breadthSize: CGSize { return CGSize(width: breadth, height: breadth) }
    var breadthRect: CGRect { return CGRect(origin: .zero, size: breadthSize) }
    
    var circleMasked: UIImage? {
        UIGraphicsBeginImageContextWithOptions(breadthSize, false, scale)
        defer { UIGraphicsEndImageContext() }
        guard let cgImage = cgImage?.cropping(to: CGRect(origin: CGPoint(x: isLandscape ? floor((size.width - size.height) / 2) : 0, y: isPortrait  ? floor((size.height - size.width) / 2) : 0), size: breadthSize)) else { return nil }
        UIBezierPath(ovalIn: breadthRect).addClip()
        UIImage(cgImage: cgImage, scale: 1, orientation: imageOrientation).draw(in: breadthRect)
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
    var squareCropped: UIImage? {
        var imageHeight = size.height
        var imageWidth = size.width
        
        if isPortrait {
            imageHeight = imageWidth
        } else {
            imageWidth = imageHeight
        }
        
        guard let cgImage = cgImage else {
            return nil
        }
        
        let targetSize = CGSize(width: imageWidth, height: imageHeight)
        let refWidth: CGFloat = CGFloat(cgImage.width)
        let refHeight: CGFloat = CGFloat(cgImage.height)
        
        let x = (refWidth - targetSize.width) / 2
        let y = (refHeight - targetSize.height) / 2
        
        let cropRect = CGRect(x: x, y: y, width: targetSize.height, height: targetSize.width)
        if let imageRef = cgImage.cropping(to: cropRect) {
            return UIImage(cgImage: imageRef, scale: 0, orientation: self.imageOrientation)
        }
        
        return nil
    }
    
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
    
    func resize(to targetSize: CGSize) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(targetSize, false, 0.0)
        
        let imageRect = CGRect(origin: CGPoint.zero, size: targetSize)
        draw(in: imageRect)
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return scaledImage
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
