//
//  RedditDeviceIDStore.swift
//  PugMe
//
//  Created by Roel Spruit on 14/05/2019.
//  Copyright © 2019 DinkyWonder. All rights reserved.
//

import Foundation
import RedditClient

final class RedditDeviceIDStore: RedditDeviceIDStoring {
    
    private let deviceIDKey = "redditDeviceId"
    
    var redditDeviceID: String? {
        get {
            return UserDefaults.standard.string(forKey: deviceIDKey)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: deviceIDKey)
        }
        
    }
}
