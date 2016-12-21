//
//  GeneralControlExtension.swift
//  Pods
//
//  Created by Henrique Morbin on 21/12/16.
//
//

import Foundation

public extension UIControl {
    public func removeAllTargets(for controlEvents: UIControlEvents = .allEvents) {
        removeTarget(nil, action: nil, for: controlEvents)
    }
}
