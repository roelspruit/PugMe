//
//  ImageViewBuilding.swift
//  UpdatingImageView
//
//  Created by Roel Spruit on 12/04/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Foundation

protocol ImageViewBuilding {
    func build(imageDownloader: ImageDownloading,
               imageUrlProvider: ImageUrlProviding) -> UIViewController
}
