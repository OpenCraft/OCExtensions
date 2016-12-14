//
//  GeneralViewExtension.swift
//  Pods
//
//  Created by Henrique Morbin on 03/08/16.
//
//

import UIKit

public extension UIView {
    
    public static func loadFromNibNamed(_ nibNamed: String, bundle: Bundle? = nil) -> UIView? {
        return UINib(nibName: nibNamed, bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as? UIView
    }
    
    public func fillSuperview() {
        if let superview = self.superview {
            let subview = self
            subview.translatesAutoresizingMaskIntoConstraints = false
            
            superview.addConstraint(NSLayoutConstraint(item: subview, attribute: .top, relatedBy: .equal, toItem: superview, attribute: .top,
                multiplier: 1.0, constant: 0.0))
            superview.addConstraint(NSLayoutConstraint(item: subview, attribute: .leading, relatedBy: .equal, toItem: superview, attribute: .leading,
                multiplier: 1.0, constant: 0.0))
            superview.addConstraint(NSLayoutConstraint(item: superview, attribute: .bottom, relatedBy: .equal, toItem: subview, attribute: .bottom,
                multiplier: 1.0, constant: 0.0))
            superview.addConstraint(NSLayoutConstraint(item: superview, attribute: .trailing, relatedBy: .equal, toItem: subview, attribute: .trailing,
                multiplier: 1.0, constant: 0.0))
        }
    }
    
    public func fillInSuperview(_ superview: UIView) {
        if superview.subviews.index(of: self) == nil {
            superview.addSubview(self)
        }
        
        self.fillSuperview()
    }
    
    public func centerSuperview(withSize size: CGSize?) {
        if let superview = self.superview {
            let subview = self
            subview.translatesAutoresizingMaskIntoConstraints = false
            
            superview.addConstraint(NSLayoutConstraint(item: subview, attribute: .centerX, relatedBy: .equal, toItem: superview, attribute: .centerX, multiplier: 1, constant: 0))
            superview.addConstraint(NSLayoutConstraint(item: subview, attribute: .centerY, relatedBy: .equal, toItem: superview, attribute: .centerY, multiplier: 1, constant: 0))
            
            if let size = size {
                subview.addConstraint(NSLayoutConstraint(item: subview, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: size.width))
                subview.addConstraint(NSLayoutConstraint(item: subview, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: size.height))
            }
        }
    }
    
    public func centerInSuperview(_ superview: UIView, withSize size: CGSize?) {
        if superview.subviews.index(of: self) == nil {
            superview.addSubview(self)
        }
        
        self.centerSuperview(withSize: size)
    }
    
    public func removeAllConstraints() {
        removeConstraints(self.constraints)
    }
    
}
