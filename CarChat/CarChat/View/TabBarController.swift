//
//  TabBarController.swift
//  CarChat
//
//  Created by Pavel Vaskou on 5/24/18.
//  Copyright © 2018 Pavel Vaskou. All rights reserved.
//

import Foundation
import UIKit


class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setupMiddleButton()
    }
    
    func setupMiddleButton() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
        
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height - 44.0
        
        menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
        menuButton.frame = menuButtonFrame
        
        menuButton.backgroundColor = UIColor.red
        menuButton.layer.cornerRadius = menuButtonFrame.height/2
        menuButton.layer.masksToBounds = true
        view.addSubview(menuButton)
        
        menuButton.setImage(UIImage(named: "fon"), for: .normal)
        menuButton.addTarget(self, action: #selector(TabBarController.click), for: .touchUpInside)
        
        view.layoutIfNeeded()
    }
    
    @objc func click() {
        
    }
}

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title ?? ("dsdsads"))")
    }
}
