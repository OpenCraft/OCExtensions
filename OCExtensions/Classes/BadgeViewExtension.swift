//
//  BadgeViewExtension.swift
//  Pods
//
//  Created by Henrique Morbin on 03/08/16.
//
//

import UIKit

public extension UIView {
    
    public var badgeCount: Int {
        get {
            return self.badgeCount
        }
        set {
            badgeInstance.text = "\(newValue)"
        }
    }
    
    private var badgeInstance: UILabel {
        get {
            guard let badge = self.viewWithTag(1) as? UILabel else {
                let badge = UILabel(frame: CGRect(
                    x: 0,
                    y: 0,
                    width: 16,
                    height: 16))
                
                badge.tag = 1
                badge.text = "0"
                badge.backgroundColor = UIColor.redColor()
                badge.textColor = UIColor.whiteColor()
                badge.font = UIFont.systemFontOfSize(10)
                badge.textAlignment = .Center
                badge.layer.cornerRadius = 8
                badge.layer.masksToBounds = true
                let x:CGFloat = self.frame.size.width
                let y:CGFloat = 0
                badge.center = CGPoint(x: x, y: y)
                
                self.addSubview(badge)
                return badge
            }
            return badge
        }
    }
}