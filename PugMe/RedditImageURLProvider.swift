//
//  RedditImageURLProvider.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation

class RedditImageURLProvider: ImageUrlProviding {

    private let subreddit: String
    private let reddit: RedditClient
    
    init(subreddit: String, client: RedditClient) {
        self.subreddit = subreddit
        self.reddit = client
    }
    
    func getImageUrls(completion: @escaping ([URL]?) -> Void) {
        
        reddit.getNewListings(subreddit: subreddit) { (response) in
                
            guard let response = response else {
                completion(nil)
                return
            }
            
            let urls = response.data.children.compactMap({ $0.data.url })
            
            completion(urls)
        }
    }
}
