//
//  RedditRequestBuilding.swift
//  RedditClient
//
//  Created by Roel Spruit on 13/05/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Foundation

protocol RedditRequestBuilding {
    func getOAuthRequest() -> URLRequest
    func getNewListingRequest(subreddit: String, previousResponse: RedditListingResponse?, token: String) -> URLRequest
}
