//
//  ImageViewBuilder.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation
import UIKit

struct ImageViewBuilder: ImageViewBuilding {
    
    private let subreddit: String
    private let clientId: String
    
    init(subreddit: String, clientId: String) {
        self.subreddit = subreddit
        self.clientId = clientId
    }
    
    func build() -> UIViewController {
        
        let dataRequester = URLSessionDataRequester()
        let imageDownloader = ImageDownloader(dataRequester: dataRequester)
        let redditClient = Reddit(clientId: clientId, dataRequester: dataRequester)
        let imageUrlProvider = RedditImageURLProvider(subreddit: subreddit, client: redditClient)
        
        let view = ImageViewController()
        let presenter = ImageViewPresenter(view: view,
                                           imageDownloader: imageDownloader,
                                           imageUrlProvider: imageUrlProvider)
        
        view.presenter = presenter
        return view
    }
}
