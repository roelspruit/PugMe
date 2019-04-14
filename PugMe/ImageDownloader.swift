//
//  ImageDownloader.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation
import UIKit

class ImageDownloader: ImageDownloading {
    
    private let dataRequester: DataRequesting
    
    init(dataRequester: DataRequesting) {
        self.dataRequester = dataRequester
    }
    
    func getImage(fromUrl url: URL, handler: @escaping (ImageDownloadResult) -> Void) {
        
        dataRequester.getData(fromUrl: url) { (data, error) in
            
            if let error = error {
                handler(ImageDownloadResult.failure(error))
                return
            }
            
            if let data = data, let image = UIImage(data: data) {
                handler(ImageDownloadResult.success(image))
                return
            }
            
            handler(ImageDownloadResult.failure(ImageDownloadError.generic))
        }
    }
}
