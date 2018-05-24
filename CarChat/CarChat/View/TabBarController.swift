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
    }
}

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title ?? ("dsdsads"))")
    }
}
