//
//  OCUtils.swift
//  Pods
//
//  Created by Henrique Morbin on 03/08/16.
//
//

import UIKit

struct OCUtils {
    
    public static var topMostViewController: UIViewController? {
        var topMost = UIApplication.sharedApplication().keyWindow?.rootViewController
        while let presented = topMost?.presentedViewController {
            topMost = presented
        }
        
        return topMost
    }
    
}