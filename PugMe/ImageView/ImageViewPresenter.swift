//
//  ImageViewPresenter.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation
import UIKit

class ImageViewPresenter {
    
    private let view: ImageViewing
    private let imageDownloader: ImageDownloading
    private let imageUrlProvider: ImageUrlProviding
    
    private var imageUrls = [URL]()
    private var seenImageUrls = [URL]()
    
    private var unseenImageUrls: [URL] {
        return imageUrls.filter({ !seenImageUrls.contains($0) })
    }
    
    init(view: ImageViewing, imageDownloader: ImageDownloading, imageUrlProvider: ImageUrlProviding) {
        self.view = view
        self.imageDownloader = imageDownloader
        self.imageUrlProvider = imageUrlProvider
    }
    
    fileprivate func getNextImage() {
        
        if let url = unseenImageUrls.randomElement() {
            getImage(fromUrl: url)
        } else {
            getNewImageURLs()
        }
    }
    
    private func getImage(fromUrl url: URL) {
        
        imageDownloader.getImage(fromUrl: url) { [weak self] (result) in
            
            switch result {
                
                case .success(let image):
                    self?.removeSeenImage(url: url)
                    self?.view.showImage(image)
                
                case .failure:
                    self?.removeSeenImage(url: url)
                    self?.view.showError()
            }
        }
    }
    
    private func getNewImageURLs() {
        
        imageUrlProvider.getImageUrls { [weak self] (urls) in
            
            guard let urls = urls else {
                self?.view.showError()
                return
            }
            
            self?.imageUrls = urls
            self?.getNextImage()
        }
    }
    
    private func removeSeenImage(url: URL) {
        seenImageUrls.append(url)
    }
}

extension ImageViewPresenter: ImageViewPresenting {

    func viewDidLoad() {
        view.showRefreshState()
        getNextImage()
    }
    
    func tappedView() {
        view.showRefreshState()
        getNextImage()
    }
}
