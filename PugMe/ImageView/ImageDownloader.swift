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
    
    func getImage(fromUrl url: URL, handler: @escaping (ImageRequestResult) -> Void) {
        
        dataRequester.getData(fromUrl: url) { (data, error) in
            
            DispatchQueue.main.async {
                if let error = error {
                    handler(ImageRequestResult.failure(error))
                    return
                }
                
                if let data = data, let image = UIImage(data: data) {
                    handler(ImageRequestResult.success(image))
                    return
                }
                
                handler(ImageRequestResult.failure(ImageRequestError.generic))
            }
        }
    }
}
