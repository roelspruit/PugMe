//
//  RedditTests.swift
//  RedditClientTests
//
//  Created by Roel Spruit on 14/05/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import XCTest
import Cuckoo

@testable import RedditClient

class RedditTests: XCTestCase {
    
    private var mockRedditRequestBuilding: MockRedditRequestBuilding!
    private var mockDataRequester: MockRedditDataRequesting!

    override func setUp() {
        super.setUp()
        
        mockRedditRequestBuilding = MockRedditRequestBuilding()
        mockDataRequester = MockRedditDataRequesting()
    }
    
    func test_get_new_listings_should_get_oauth_request() {
        
        let client = getClient()
        
        client.getNewListings(subreddit: "some subreddit") { (_) in }
        
        verify(mockRedditRequestBuilding).getOAuthRequest()
    }
    
    func test_get_new_listings_should_get_data() {
        
        let client = getClient()
        
        client.getNewListings(subreddit: "some subreddit") { (_) in }
        
        verify(mockDataRequester).getData(withRequest: any(), handler: any())
    }
    
    private func getClient() -> Reddit {
        
        let client = Reddit(requestBuilder: mockRedditRequestBuilding, dataRequester: mockDataRequester)
        
        stub(mockRedditRequestBuilding) { (stub) in
            when(stub).getOAuthRequest().thenReturn(URLRequest(url: URL(string: "http://www.nu.nl")!))
        }
        
        stub(mockDataRequester) { (stub) in
            when(stub).getData(withRequest: any(), handler: any()).thenDoNothing()
        }
        
        return client
    }

}
