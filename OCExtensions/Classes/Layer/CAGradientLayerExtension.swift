//
//  CAGradientLayerExtension.swift
//  Pods
//
//  Created by Cristian Madrid on 3/9/17.
//
//

import UIKit
public enum GradientOrientation {
    case horizontal, vertical
    
    var startPoint: CGPoint {
        switch self {
        case .horizontal:
            return CGPoint(x: 0.0, y: 0.5)
        case .vertical:
            return CGPoint(x: 0.5, y: 0)
        }
    }
    
    var endPoint: CGPoint {
        switch self {
        case .horizontal:
            return CGPoint(x: 1.0, y: 0.5)
        case .vertical:
            return CGPoint(x: 0.5, y: 1)
        }
    }
}

public extension CAGradientLayer {
    
    public convenience init(frame: CGRect, orientation: GradientOrientation, colors: [CGColor]) {
        let layer = CAGradientLayer()
        layer.colors = colors
        layer.startPoint = orientation.startPoint
        layer.endPoint = orientation.endPoint
        layer.frame = frame
        self.init(layer: layer)
    }
}
