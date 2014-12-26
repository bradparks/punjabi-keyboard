//
//  PunjabiKeyboardViewController.swift
//  TastyImitationKeyboard
//
//  Created by Kulpreet Chilana on 11/26/14.
//  Copyright (c) 2014 Apple. All rights reserved.
//

import UIKit

class PunjabiKeyboardViewController: KeyboardViewController {
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        NSUserDefaults.standardUserDefaults().registerDefaults([
            kAutoCapitalization: false,
            kPeriodShortcut: true,
            kKeyboardClicks: false,
            kSmallLowercase: true
            ])
        
        self.keyboard = punjabiKeyboard()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

