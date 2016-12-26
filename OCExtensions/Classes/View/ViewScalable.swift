//
//  ViewScalable.swift
//  Pods
//
//  Created by Cristian Madrid on 12/26/16.
//
//

public extension UIView {
    
    public func tapScale(by: CGFloat) {
        
        UIView.animate(withDuration: 0.2, animations: { [weak self] in
            self?.transform = CGAffineTransform(scaleX: 1 - by, y: 1 - by)
            }, completion: { [weak self] _ in
                UIView.animate(withDuration: 0.2) {
                    self?.transform = CGAffineTransform(scaleX: 1, y: 1)
                }
        })
    }
}
