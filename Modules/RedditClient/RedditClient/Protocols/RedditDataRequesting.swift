//
//  RedditDataRequesting.swift
//  RedditClient
//
//  Created by Roel Spruit on 13/05/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Foundation

public protocol RedditDataRequesting {
    func getData(withRequest request: URLRequest, handler: @escaping (Data?, Error?) -> Void)
}
