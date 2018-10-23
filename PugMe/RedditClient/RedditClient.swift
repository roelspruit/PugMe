//
//  RedditClient.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation

class Reddit: RedditClient {
    
    private let clientId: String
    private let dataRequester: DataRequesting
    
    init(clientId: String, dataRequester: DataRequesting) {
        self.clientId = clientId
        self.dataRequester = dataRequester
    }
    
    func getNewListings(subreddit: String, completion: @escaping (RedditListingResponse?) -> Void) {
        
        let url = URL(string: "https://oauth.reddit.com/r/\(subreddit)/new?limit=100")!
        
        authorize { (tokenResponse) in
            
            guard let token = tokenResponse?.access_token else {
                completion(nil)
                return
            }
            
            var request = URLRequest(url: url)
            request.addValue("bearer \(token)", forHTTPHeaderField: "Authorization")
            
            self.dataRequester.getData(withRequest: request, handler: { (data, error) in
                
                guard let data = data else {
                    completion(nil)
                    return
                }
                
                let decoder = JSONDecoder()
                let response = try? decoder.decode(RedditListingResponse.self, from: data)
                completion(response)
            })
        }
    }
    
    private func authorize(completion: @escaping (RedditAccessTokenResponse?) -> Void) {
        
        let url = URL(string: "https://www.reddit.com/api/v1/access_token")!
        
        let body = "grant_type=https://oauth.reddit.com/grants/installed_client&device_id=\(deviceid)"
        
        var request = URLRequest(url: url)
        request.httpBody = body.data(using: String.Encoding.utf8)
        request.httpMethod = "POST"
        request.addValue(getBasicAuthHeader(login: clientId, password: ""), forHTTPHeaderField: "Authorization")
        
        self.dataRequester.getData(withRequest: request, handler: { (data, error) in
            
            guard let data = data else {
                completion(nil)
                return
            }
            
            let decoder = JSONDecoder()
            let response = try? decoder.decode(RedditAccessTokenResponse.self, from: data)
            
            completion(response)
        })
    }
    
    private func getBasicAuthHeader(login: String, password: String) -> String {
        let userPasswordString = "\(login):\(password)"
        let userPasswordData = userPasswordString.data(using: String.Encoding.utf8)
        let base64EncodedCredential = userPasswordData!.base64EncodedString()
        return  "Basic \(base64EncodedCredential)"
    }
    
    private var deviceid: String {
        get {
            if let id = UserDefaults.standard.string(forKey: "deviceId") {
                return id
            }
            let newId = UUID().uuidString
            UserDefaults.standard.set(newId, forKey: "deviceId")
            return newId
        }
    }
}
