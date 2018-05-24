//
//  Storyboard.swift
//  CarChat
//
//  Created by Pavel Vaskou on 5/24/18.
//  Copyright © 2018 Pavel Vaskou. All rights reserved.
//

import UIKit


enum Storyboard: String {
    case main, auth
    
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue.capitalizingFirstLetter(), bundle: Bundle.main)
    }
}


