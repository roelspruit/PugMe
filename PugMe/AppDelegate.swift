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

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let rootViewController = createRootViewController()

        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = rootViewController
        self.window?.makeKeyAndVisible()

        return true
    }

    private func createRootViewController() -> UIViewController {

        guard let info = Bundle.main.infoDictionary,
              let subreddit = info["Subreddit"] as? String,
              let clientId = info["RedditClientID"] as? String else {
            fatalError("Incorrect app configuration")
        }

        let dataRequester = URLSessionDataRequester()
        let imageDownloader = ImageDownloader(dataRequester: dataRequester)
        let redditClient = RedditClientBuilder.build(redditClientId: clientId,
                dataRequester: dataRequester,
                deviceIdStore: UserDefaultsRedditDeviceIDStore())

        let imageUrlProvider = RedditImageURLProvider(subreddit: subreddit, client: redditClient)

        return UpdatingImageViewBuilder.build(imageDownloader: imageDownloader,
                imageUrlProvider: imageUrlProvider)
    }

}

