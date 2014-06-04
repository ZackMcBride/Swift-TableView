//  Copyright (c) 2014 Zack McBride. All rights reserved.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {

        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)

        let navigationController = UINavigationController(rootViewController: SwiftTableViewController(nibName: nil, bundle: nil))

        self.window!.rootViewController = navigationController
        self.window!.makeKeyAndVisible()

        return true
    }
}

