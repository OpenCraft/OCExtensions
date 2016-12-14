//
//  ViewController.swift
//  OCExtensions
//
//  Created by Henrique Morbin on 08/03/2016.
//  Copyright (c) 2016 Henrique Morbin. All rights reserved.
//

import UIKit
import OCExtensions

class ViewController: UIViewController {

    @IBOutlet weak var cardboardImage: UIImageView!
    @IBOutlet weak var navBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBar.topItem?.setLeftBarButtonItem(title: "Touch me") {
            self.showAlert("I'm a closure bar button item.")
        }
        
        navBar.topItem?.setRightBarButtonItem(image: #imageLiteral(resourceName: "chat-manager")) {
            self.showAlert("I'm a other closure bar button item.")
        }

    }
    
    @IBAction func addBadgeTouched(_ sender: AnyObject) {
        cardboardImage.badgeCount = 1
        cardboardImage.badgeSize = 36
        cardboardImage.badgeOffset = CGPoint(x: -10, y: 10)
    }

}

