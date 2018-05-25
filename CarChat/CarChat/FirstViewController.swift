//
//  FirstViewController.swift
//  CarChat
//
//  Created by Pavel Vaskou on 5/24/18.
//  Copyright © 2018 Pavel Vaskou. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.tabBarController?.tabBar.invalidateIntrinsicContentSize()
    }
}

