//
//  ImageDownloading.swift
//  UpdatingImageView
//
//  Created by Roel Spruit on 12/04/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Foundation

public protocol ImageDownloading {
    func getImage(fromUrl url: URL, handler: @escaping (ImageDownloadResult) -> Void)
}

public enum ImageDownloadResult {
    case success(UIImage)
    case failure(Error)
}

public enum ImageDownloadError: Error {
    case generic
}
