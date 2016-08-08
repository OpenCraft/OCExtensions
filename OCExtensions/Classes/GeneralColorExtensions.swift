//
//  GeneralColorExtensions.swift
//  Pods
//
//  Created by Henrique Morbin on 08/08/16.
//
//

import UIKit

public extension UIColor {
    
    public func image(withSize size: CGSize? = nil) -> UIImage? {
        return UIImage(color: self, size: size)
    }
    
}
