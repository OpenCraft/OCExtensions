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
        
        UIGraphicsBeginImageContext(size);
        let path = UIBezierPath(rect: rect)
        color.setFill()
        path.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        if let cgImage = image?.cgImage {
            self.init(cgImage: cgImage)
        } else {
            return nil
        }
    }
    
}
