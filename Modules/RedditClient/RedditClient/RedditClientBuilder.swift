//
//  RedditClientBuilder.swift
//  RedditClient
//
//  Created by Roel Spruit on 13/05/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Foundation

public final class RedditClientBuilder {
    
    public static func build(redditClientId: String, dataRequester: RedditDataRequesting, deviceIdStore: RedditDeviceIDStoring) -> RedditClient {
        
        let requestBuilder = RedditRequestBuilder(clientId: redditClientId,
                                                  deviceIdStore: deviceIdStore)
        
        return Reddit(requestBuilder: requestBuilder,
                      dataRequester: dataRequester)
    }
}
