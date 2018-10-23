//
//  AppDelegate.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let builder = ImageViewBuilder(subreddit: "pugs", clientId: INSERT_REDDIT_CLIENT_ID_HERE)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = builder.build()
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

