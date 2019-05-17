//
//  RedditRequestBuilder.swift
//  RedditClient
//
//  Created by Roel Spruit on 13/05/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Foundation

final class RedditRequestBuilder: RedditRequestBuilding {
    
    private var deviceIdStore: RedditDeviceIDStoring
    private let clientId: String
    
    init(clientId: String, deviceIdStore: RedditDeviceIDStoring) {
        self.clientId = clientId
        self.deviceIdStore = deviceIdStore
    }
    
    func getOAuthRequest() -> URLRequest {
        
        let url = URL(string: "https://www.reddit.com/api/v1/access_token")!
        let body = "grant_type=https://oauth.reddit.com/grants/installed_client&device_id=\(deviceid)"
        
        var request = URLRequest(url: url)
        request.httpBody = body.data(using: String.Encoding.utf8)
        request.httpMethod = "POST"
        request.addValue(getBasicAuthHeader(login: clientId, password: ""), forHTTPHeaderField: "Authorization")
        
        return request
    }
    
    func getNewListingRequest(subreddit: String, previousResponse: RedditListingResponse? = nil, token: String) -> URLRequest {

        let pageSize = 25
        var urlString = "https://oauth.reddit.com/r/\(subreddit)/new?limit=\(pageSize)"

        if let after = previousResponse?.data.after {
            urlString = "\(urlString)&after=\(after)"
        }
        let url = URL(string: urlString)!
        
        var request = URLRequest(url: url)
        request.addValue("bearer \(token)", forHTTPHeaderField: "Authorization")
        
        return request
    }
    
    private func getBasicAuthHeader(login: String, password: String) -> String {
        
        let userPasswordString = "\(login):\(password)"
        let userPasswordData = userPasswordString.data(using: String.Encoding.utf8)
        let base64EncodedCredential = userPasswordData!.base64EncodedString()
        
        return  "Basic \(base64EncodedCredential)"
    }
    
    private var deviceid: String {
        get {
            if let id = deviceIdStore.redditDeviceID {
                return id
            }
            let newId = UUID().uuidString
            deviceIdStore.redditDeviceID = newId
            return newId
        }
    }
    
}
