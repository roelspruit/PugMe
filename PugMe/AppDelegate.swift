//
//  AppDelegate.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import UIKit
import UpdatingImageView
import RedditClient

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    private let redditClientId = "HHkDDGxz5ygrxw"
    private let subreddit = "pugs"
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let dataRequester = URLSessionDataRequester()
        let imageDownloader = ImageDownloader(dataRequester: dataRequester)
        let redditClient = RedditClientBuilder.build(redditClientId: redditClientId,
                                                     dataRequester: dataRequester,
                                                     deviceIdStore: RedditDeviceIDStore())
        
        let imageUrlProvider = RedditImageURLProvider(subreddit: subreddit, client: redditClient)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UpdatingImageViewBuilder.build(imageDownloader: imageDownloader,
                                                                         imageUrlProvider: imageUrlProvider)
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
}

