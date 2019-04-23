//
//  ImageDownloading.swift
//  PugMe
//
//  Created by Roel Spruit on 12/04/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Foundation
import UIKit

protocol ImageDownloading {
    func getImage(fromUrl url: URL, handler: @escaping (ImageDownloadResult) -> Void)
}

enum ImageDownloadResult {
    case success(UIImage)
    case failure(Error)
}

enum ImageDownloadError: Error {
    case generic
}
