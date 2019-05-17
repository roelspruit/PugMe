//
//  RedditClient.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation

/// A rudimentary client for the Reddit API
final class Reddit {
    
    private let requestBuilder: RedditRequestBuilding
    private let dataRequester: RedditDataRequesting
    
    init(requestBuilder: RedditRequestBuilding, dataRequester: RedditDataRequesting) {
        self.requestBuilder = requestBuilder
        self.dataRequester = dataRequester
    }
    
    private func authorize(completion: @escaping (RedditAccessTokenResponse?) -> Void) {
        
        let request = requestBuilder.getOAuthRequest()
        
        self.dataRequester.getData(withRequest: request, handler: { [weak self] (data, error) in
            
            let response = self?.decodeJSON(RedditAccessTokenResponse.self, from: data)
            
            completion(response)
        })
    }
 
    private func decodeJSON<T>(_ type: T.Type, from data: Data?) -> T? where T : Decodable {
        
        guard let data = data else {
            return nil
        }
        
        let decoder = JSONDecoder()
        return try? decoder.decode(type, from: data)
    }
}

extension Reddit: RedditClient {
    
    /// Get all new lists for this subreddit
    ///
    /// - Parameters:
    ///   - subreddit: Name of the subreddit
    ///   - completion: Completion callback
    func getNewListings(subreddit: String, previousResponse: RedditListingResponse? = nil, completion: @escaping (RedditListingResponse?) -> Void) {
        
        authorize { [weak self] (tokenResponse) in
            
            guard let self = self, let token = tokenResponse?.access_token else {
                completion(nil)
                return
            }
            
            let request = self.requestBuilder.getNewListingRequest(subreddit: subreddit,
                    previousResponse: previousResponse,
                    token: token)
            
            self.dataRequester.getData(withRequest: request, handler: { [weak self] (data, error) in
                
                let response = self?.decodeJSON(RedditListingResponse.self, from: data)
                
                completion(response)
            })
        }
    }
}
