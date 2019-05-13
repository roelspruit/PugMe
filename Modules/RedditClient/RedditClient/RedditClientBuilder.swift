//
//  RedditClientBuilder.swift
//  RedditClient
//
//  Created by Roel Spruit on 13/05/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Foundation

public struct RedditClientBuilder {
    public static func build(redditClientId: String, dataRequester: RedditDataRequesting) -> RedditClient {
        return Reddit(clientId: redditClientId, dataRequester: dataRequester)
    }
}
