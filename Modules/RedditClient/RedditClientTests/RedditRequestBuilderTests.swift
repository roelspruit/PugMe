//
//  RedditRequestBuilderTests.swift
//  RedditClientTests
//
//  Created by Roel Spruit on 13/05/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import XCTest
import Cuckoo

@testable import RedditClient

class RedditRequestBuilderTests: XCTestCase {
    
    private let mockDeviceIdStore = MockRedditDeviceIDStoring()

    func test_oauth_request_should_have_correct_body() {
        
        let requestBuilder = getRequestBuilder()
        
        let request = requestBuilder.getOAuthRequest()
        
        let body = String(data: request.httpBody!, encoding: .utf8)
        XCTAssertEqual(body, "grant_type=https://oauth.reddit.com/grants/installed_client&device_id=deviceId")
    }
    
    func test_oauth_request_use_post_method() {
        
        let requestBuilder = getRequestBuilder()
        
        let request = requestBuilder.getOAuthRequest()
        
        XCTAssertEqual(request.httpMethod, "POST")
    }
    
    func test_oauth_request_should_contain_authorization_header() {
        
        let requestBuilder = getRequestBuilder()
        
        let request = requestBuilder.getOAuthRequest()
        
        XCTAssertTrue(request.allHTTPHeaderFields!.keys.contains("Authorization"))
    }
    
    func test_oauth_request_should_have_correct_url() {
        
        let requestBuilder = getRequestBuilder()
        
        let request = requestBuilder.getOAuthRequest()
    
        XCTAssertEqual(request.url, URL(string: "https://www.reddit.com/api/v1/access_token")!)
    }
    
    func test_new_listing_request_should_have_correct_url() {
        
        let requestBuilder = getRequestBuilder()
        
        let request = requestBuilder.getNewListingRequest(subreddit: "somesubreddit", token: "sometoken")
        
        XCTAssertEqual(request.url, URL(string: "https://oauth.reddit.com/r/somesubreddit/new?limit=25")!)
    }

    func test_new_listing_request_should_have_pagination() {

        let requestBuilder = getRequestBuilder()

        let previousResponse = RedditListingResponse(data: RedditListingResponseData(children: [], after: "someCrypticAfter"))

        let request = requestBuilder.getNewListingRequest(subreddit: "somesubreddit", 
                previousResponse: previousResponse,
                token: "sometoken")

        XCTAssertEqual(request.url, URL(string: "https://oauth.reddit.com/r/somesubreddit/new?limit=25&after=someCrypticAfter")!)
    }
    
    func test_new_listing_request_should_correct_authorization_header() {
        
        let requestBuilder = getRequestBuilder()
        
        let request = requestBuilder.getNewListingRequest(subreddit: "somesubreddit", token: "sometoken")
        
        XCTAssertEqual(request.allHTTPHeaderFields!["Authorization"], "bearer sometoken")
    }
    
    func test_device_id_should_be_created_if_it_doesnt_exist() {
        
        let requestBuilder = getRequestBuilder()
        
        stub(mockDeviceIdStore) { (stub) in
            when(stub.redditDeviceID).get.thenReturn(nil)
        }
        
        let _ = requestBuilder.getOAuthRequest()
        
        verify(mockDeviceIdStore).redditDeviceID.set(any())
    }
    
    private func getRequestBuilder() -> RedditRequestBuilder {
        
        let requestBuilder = RedditRequestBuilder(clientId: "clientid", deviceIdStore: mockDeviceIdStore)
        
        stub(mockDeviceIdStore) { (stub) in
            when(stub.redditDeviceID).get.thenReturn("deviceId")
            when(stub.redditDeviceID).set(any()).thenDoNothing()
        }
        return requestBuilder
    }
}
