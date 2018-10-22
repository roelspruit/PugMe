//
//  Protocols.swift
//  RedditClient
//
//  Created by Roel Spruit on 22/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation

public protocol RedditClient {
    func getNewListings(subreddit: String, completion: @escaping (RedditListingResponse?) -> Void )
}
