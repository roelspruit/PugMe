//
//  RedditListingResponseData.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation

public struct RedditListingResponseData: Decodable {
    public let children: [RedditListing]
    public let after: String
}
