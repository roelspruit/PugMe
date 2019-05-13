//
//  ImageDownloaderTests.swift
//  PugMeTests
//
//  Created by Roel Spruit on 22/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import XCTest
import Cuckoo
import UpdatingImageView

@testable import PugMe

class ImageDownloaderTests: XCTestCase {

    var mockDataRequester = MockDataRequesting()
    
    override func setUp() {
        super.setUp()
        mockDataRequester = MockDataRequesting()
    }
    
    func testInvalidDataShouldReturnGenericError() {
        
        stub(mockDataRequester) { (stub) in
            when(stub.getData(fromUrl: any(), handler: any())).then({ (url, handler) in
                handler(nil, ImageDownloadError.generic)
            })
        }
        
        let imageDownloader = ImageDownloader(dataRequester: mockDataRequester)
        imageDownloader.getImage(fromUrl: URL(string: "http://www.nu.nl")!) { (result) in
            
            switch result {
                case .failure(let error):
                    if case ImageDownloadError.generic = error {
                        print()
                    } else {
                        XCTFail("Returned error is incorrect")
                    }
                
                default: XCTFail("incorrect response")
            }
        }
        
        verify(mockDataRequester).getData(fromUrl: any(), handler: any())
        verifyNoMoreInteractions(mockDataRequester)
    }
    
    func testNoErrorAndNoImageShouldReturnGenericError() {
        
        stub(mockDataRequester) { (stub) in
            when(stub.getData(fromUrl: any(), handler: any())).then({ (url, handler) in
                handler(nil, nil)
            })
        }
        
        let imageDownloader = ImageDownloader(dataRequester: mockDataRequester)
        imageDownloader.getImage(fromUrl: URL(string: "http://www.nu.nl")!) { (result) in
            
            switch result {
                case .failure(let error):
                    if case ImageDownloadError.generic = error {
                        print()
                    } else {
                        XCTFail("Returned error is incorrect")
                    }
                
                default: XCTFail("incorrect response")
            }
        }
        
        verify(mockDataRequester).getData(fromUrl: any(), handler: any())
        verifyNoMoreInteractions(mockDataRequester)
    }
    
    func testValidDataShouldReturnImage() {
        
        let imageData = UIImage(named: "pug", in: Bundle.init(for: ImageDownloaderTests.self), compatibleWith: nil)!.pngData()!
        
        stub(mockDataRequester) { (stub) in
            when(stub.getData(fromUrl: any(), handler: any())).then({ (url, handler) in
                handler(imageData, nil)
            })
        }
        
        let imageDownloader = ImageDownloader(dataRequester: mockDataRequester)
        imageDownloader.getImage(fromUrl: URL(string: "http://www.nu.nl")!) { (result) in
            switch result {
                case .success(let image):
                    XCTAssertNotNil(image)
                default: XCTFail("incorrect response")
            }
        }
        
        verify(mockDataRequester).getData(fromUrl: any(), handler: any())
        verifyNoMoreInteractions(mockDataRequester)
    }
}
