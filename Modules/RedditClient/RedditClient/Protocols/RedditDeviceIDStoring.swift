//
//  RedditDeviceIDStoring.swift
//  RedditClient
//
//  Created by Roel Spruit on 14/05/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Foundation

public protocol RedditDeviceIDStoring {
    var redditDeviceID: String? { get set }
}
