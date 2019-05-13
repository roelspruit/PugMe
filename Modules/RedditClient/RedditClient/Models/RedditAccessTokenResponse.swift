//
//  RedditAccessTokenResponse.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation

struct RedditAccessTokenResponse: Codable {
    let access_token: String
    let expires_in: Int
}
