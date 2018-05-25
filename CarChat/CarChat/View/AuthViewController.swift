//
//  AuthViewController.swift
//  CarChat
//
//  Created by Pavel Vaskou on 5/24/18.
//  Copyright © 2018 Pavel Vaskou. All rights reserved.
//

import Foundation
import UIKit
import UIWindowTransitions


class AuthViewController: UIViewController {
    
    @IBAction func signInAction(_ sender: Any) {
        
        guard let vc =  Storyboard.main.instance.instantiateInitialViewController() else {
            return
        }
        
        guard let window = UIApplication.shared.keyWindow else {
            return
        }
        
        var options = UIWindow.TransitionOptions()
        options.duration = 0.33
        options.direction = .toBottom
        window.setRootViewController(vc, options: options)
    }
}
