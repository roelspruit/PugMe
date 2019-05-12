//
//  ImageViewBuilderTests.swift
//  PugMeTests
//
//  Created by Roel Spruit on 22/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import XCTest

@testable import UpdatingImageView

class UpdatingImageViewBuilderTests: XCTestCase {

    func testBuild() {
        
        let mockImageDownloader = MockImageDownloading()
        let mockImageUrlProvider = MockImageUrlProviding()
        let viewController = UpdatingImageViewBuilder.build(imageDownloader: mockImageDownloader,
                                           imageUrlProvider: mockImageUrlProvider)
        
        XCTAssertTrue(viewController is ImageViewing)
        
        let imageViewController = viewController as! ImageViewController
        XCTAssertNotNil(imageViewController.presenter)
    }
}
