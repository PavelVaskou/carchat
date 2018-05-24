import UIKit


class Launcher {
    static func launch(with window: UIWindow?) -> Bool {
        
        let x = 0
        if x == 1 {
            let rootController = Storyboard.main.instance.instantiateViewController(withIdentifier: "TabBarController")
            window?.rootViewController = rootController
            window?.makeKeyAndVisible()
        } else {
            let rootController = Storyboard.auth.instance.instantiateViewController(withIdentifier: "AuthViewController")
            window?.rootViewController = rootController
            window?.makeKeyAndVisible()
        }
        
        return true
    }
}
