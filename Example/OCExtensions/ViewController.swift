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
    
    @IBAction func addBadgeTouched(sender: AnyObject) {
        cardboardImage.badgeCount = 1
        cardboardImage.badgeSize = 36
        cardboardImage.badgeOffset = CGPoint(x: -18, y: 18)
    }

}

