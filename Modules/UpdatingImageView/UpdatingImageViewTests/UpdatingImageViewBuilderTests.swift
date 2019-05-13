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
        let view = UpdatingImageViewBuilder.build(imageDownloader: mockImageDownloader,
                                                            imageUrlProvider: mockImageUrlProvider)
        
        guard let imageViewing = view as? ImageViewing else {
            XCTFail("View returned from builder is not of correct type")
            return
        }
        
        XCTAssertNotNil(imageViewing.presenter)
        XCTAssertTrue(imageViewing.presenter is ImageViewPresenter)
    }
}
