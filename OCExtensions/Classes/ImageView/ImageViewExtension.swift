//
//  ImageViewExtension.swift
//  SaudeOdonto
//
//  Created by Henrique Morbin on 17/11/16.
//  Copyright © 2016 Porto Seguro. All rights reserved.
//

import Foundation

public extension UIImageView {
    
    public var scaledImageSize: CGSize {
        guard let image = image else {
            return CGSize.zero
        }
        
        let factorX = frame.size.width / image.size.width
        let factorY = frame.size.height / image.size.height
        var factor: CGFloat = 1
        
        switch contentMode {
        case .scaleAspectFit:
            factor = min(factorX, factorY)
            return CGSize(width: image.size.width * factor, height: image.size.height * factor)
        case .scaleAspectFill:
            factor = max(factorX, factorY)
            return CGSize(width: image.size.width * factor, height: image.size.height * factor)
        case .scaleToFill:
            return frame.size
        default:
            return image.size
        }
    }
    
}
