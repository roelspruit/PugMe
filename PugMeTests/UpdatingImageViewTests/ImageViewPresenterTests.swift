//
//  ImageViewPresenterTests.swift
//  PugMeTests
//
//  Created by Roel Spruit on 22/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import XCTest
import Cuckoo

@testable import PugMe

class ImageViewPresenterTests: XCTestCase {
    
    var mockView = MockImageViewing()
    var mockImageDownloader = MockImageDownloading()
    var mockImageUrlProvider = MockImageUrlProviding()
    var presenter: ImageViewPresenter!
    
    override func setUp() {
        super.setUp()
        
        mockView = MockImageViewing()
        mockImageDownloader = MockImageDownloading()
        mockImageUrlProvider = MockImageUrlProviding()
        presenter = ImageViewPresenter(view: mockView,
                                       imageDownloader: mockImageDownloader,
                                       imageUrlProvider: mockImageUrlProvider)
        
        stub(mockView) { (stub) in
            when(stub.showRefreshState()).thenDoNothing()
            when(stub.showImage(any())).thenDoNothing()
            when(stub.showError()).thenDoNothing()
        }
        
        stub(mockImageUrlProvider) { (stub) in
            when(stub.getImageUrls(completion: any())).then({ (completion) in
                completion([URL(string: "http://www.nu.nl")!])
            })
        }
        
        let testImage = UIImage(named: "pug", in: Bundle.init(for: ImageViewPresenterTests.self), compatibleWith: nil)!
        stub(mockImageDownloader) { (stub) in
            when(stub.getImage(fromUrl: any(), handler: any())).then({ (url, completion) in
                completion(ImageDownloadResult.success(testImage))
            })
        }
    }
    
    func testViewDidLoad() {
        
        presenter.viewDidLoad()
        
        verify(mockImageUrlProvider).getImageUrls(completion: any())
        verify(mockImageDownloader).getImage(fromUrl: any(), handler: any())
        verify(mockView).showRefreshState()
        verify(mockView).showImage(any())
        
        verifyNoMockInteractionsOnAllMocks()
    }
    
    func testTappedViewOnce() {
        
        presenter.tappedView()
        
        verify(mockImageUrlProvider).getImageUrls(completion: any())
        verify(mockImageDownloader).getImage(fromUrl: any(), handler: any())
        verify(mockView).showRefreshState()
        verify(mockView).showImage(any())
        
        verifyNoMockInteractionsOnAllMocks()
    }
    
    func testTappedViewMultipleTimes() {
        
        stub(mockImageUrlProvider) { (stub) in
            when(stub.getImageUrls(completion: any())).then({ (completion) in
                completion([URL(string: "http://www.nu.nl")!,
                            URL(string: "http://www.nu2.nl")!,
                            URL(string: "http://www.nu3.nl")!])
            })
        }
        
        presenter.tappedView()
        presenter.tappedView()
        presenter.tappedView()
        
        verify(mockImageUrlProvider).getImageUrls(completion: any())
        verify(mockImageDownloader, times(3)).getImage(fromUrl: any(), handler: any())
        
        verify(mockView, times(3)).showRefreshState()
        verify(mockView, times(3)).showImage(any())
        
        verifyNoMockInteractionsOnAllMocks()
    }
    
    func testFailureToGetUrlsShouldShowError() {
        
        stub(mockImageUrlProvider) { (stub) in
            when(stub.getImageUrls(completion: any())).then({ (completion) in
                completion(nil)
            })
        }
        
        presenter.tappedView()
        
        verify(mockImageUrlProvider).getImageUrls(completion: any())
        verify(mockView).showRefreshState()
        verify(mockView).showError()
        
        verifyNoMockInteractionsOnAllMocks()
    }
    
    func testFailureToDownloadImageShouldShowError() {
        
        stub(mockImageDownloader) { (stub) in
            when(stub.getImage(fromUrl: any(), handler: any())).then({ (url, completion) in
                completion(ImageDownloadResult.failure(ImageDownloadError.generic))
            })
        }
        
        presenter.tappedView()
        
        verify(mockImageUrlProvider).getImageUrls(completion: any())
        verify(mockImageDownloader).getImage(fromUrl: any(), handler: any())
        verify(mockView).showRefreshState()
        verify(mockView).showError()
        
        verifyNoMockInteractionsOnAllMocks()
    }
    
    func verifyNoMockInteractionsOnAllMocks() {
        verifyNoMoreInteractions(mockImageUrlProvider)
        verifyNoMoreInteractions(mockImageDownloader)
        verifyNoMoreInteractions(mockView)
    }
}
