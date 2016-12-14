//
//  UIBarButtonItemClosure.swift
//  sup-places-admin-ios
//
//  Created by Henrique Morbin on 17/09/16.
//  Copyright © 2016 Morbix. All rights reserved.
//
import UIKit

public class UIBarButtonItemClosure: UIBarButtonItem {
    
    public typealias Block = () -> Void
    
    fileprivate var actionHandler: Block?
    
    public convenience init(title: String, action: @escaping Block) {
        self.init(title: title, style: .plain, target: nil, action: nil)
        self.configureAction(action)
    }
    
    public convenience init(barButtonSystemItem: UIBarButtonSystemItem, action: @escaping Block) {
        self.init(barButtonSystemItem: barButtonSystemItem, target: nil, action: nil)
        self.configureAction(action)
    }
    
    public convenience init(image: UIImage?, action: @escaping Block) {
        self.init(image: image, style: .plain, target: nil, action: nil)
        self.configureAction(action)
    }
    
    // MARK: Methods
    
    final private func configureAction(_ action: @escaping Block) {
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
