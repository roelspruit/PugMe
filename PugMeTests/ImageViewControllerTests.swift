//
//  ImageViewControllerTests.swift
//  PugMeTests
//
//  Created by Roel Spruit on 22/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation
import FBSnapshotTestCase

@testable import PugMe

class ImageViewControllerTest: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        recordMode = false
    }
    
    func testRefreshState() {
        let imageViewController = ImageViewController(nibName: nil, bundle: nil)
        imageViewController.showRefreshState()
        FBSnapshotVerifyView(imageViewController.view)
    }
    
    func testErrorState() {
        let imageViewController = ImageViewController(nibName: nil, bundle: nil)
        imageViewController.showError()
        FBSnapshotVerifyView(imageViewController.view)
    }
    
    func testImageState() {
        let image = UIImage(named: "pug", in: Bundle.init(for: ImageDownloaderTests.self), compatibleWith: nil)!
        let imageViewController = ImageViewController(nibName: nil, bundle: nil)
        imageViewController.showImage(image)
        FBSnapshotVerifyView(imageViewController.view)
    }
}


