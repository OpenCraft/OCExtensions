//
//  NavigationItem.swift
//  Pods
//
//  Created by Henrique Morbin on 14/12/16.
//
//

import UIKit
import Foundation

public typealias Block = () -> Void

public extension UINavigationItem {
    
    public func setLeftBarButtonItem(title: String, action: @escaping Block) {
        self.leftBarButtonItem = UIBarButtonItemClosure(title: title, action: action)
    }
    
    public func setLeftBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem, action: @escaping Block) {
        self.leftBarButtonItem = UIBarButtonItemClosure(barButtonSystemItem: barButtonSystemItem, action: action)
    }
    
    public func setLeftBarButtonItem(image: UIImage?, action: @escaping Block) {
        self.leftBarButtonItem = UIBarButtonItemClosure(image: image, action: action)
    }
    
    public func setRightBarButtonItem(title: String, action: @escaping Block) {
        self.rightBarButtonItem = UIBarButtonItemClosure(title: title, action: action)
    }
    
    public func setRightBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem, action: @escaping Block) {
        self.rightBarButtonItem = UIBarButtonItemClosure(barButtonSystemItem: barButtonSystemItem, action: action)
    }
    
    public func setRightBarButtonItem(image: UIImage?, action: @escaping Block) {
        self.rightBarButtonItem = UIBarButtonItemClosure(image: image, action: action)
    }
    
}

fileprivate class UIBarButtonItemClosure: UIBarButtonItem {

    fileprivate var actionHandler: Block?
    
    fileprivate convenience init(title: String, action: @escaping Block) {
        self.init(title: title, style: .plain, target: nil, action: nil)
        self.configureAction(action)
    }
    
    fileprivate convenience init(barButtonSystemItem: UIBarButtonSystemItem, action: @escaping Block) {
        self.init(barButtonSystemItem: barButtonSystemItem, target: nil, action: nil)
        self.configureAction(action)
    }
    
    fileprivate convenience init(image: UIImage?, action: @escaping Block) {
        self.init(image: image, style: .plain, target: nil, action: nil)
        self.configureAction(action)
    }
    
    // MARK: Methods
    
    final fileprivate func configureAction(_ action: @escaping Block) {
        self.target = self
        self.action = #selector(UIBarButtonItemClosure.barButtonItemPressed)
        self.actionHandler = action
    }
    
    final func barButtonItemPressed(sender: UIBarButtonItem) {
        if let actionHandler = actionHandler {
            actionHandler()
        }
    }
    
}
