//
//  RedditImageViewBuilderTests.swift
//  PugMeTests
//
//  Created by Roel Spruit on 22/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import XCTest

@testable import PugMe

class RedditImageViewBuilderTests: XCTestCase {

    func testBuild() {
        let builder = RedditImageViewBuilder(subreddit: "aww", clientId: "clientid")
        let viewController = builder.build()
        
        XCTAssertTrue(viewController is ImageViewing)
        
        let imageViewController = viewController as! ImageViewController
        XCTAssertNotNil(imageViewController.presenter)
    }
}
