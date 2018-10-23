//
//  ImageViewProtocols.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation
import UIKit

protocol ImageViewBuilding {
    func build() -> UIViewController
}

protocol ImageDownloading {
    func getImage(fromUrl url: URL, handler: @escaping (ImageDownloadResult) -> Void)
}

protocol ImageViewing {
    func showImage(_ image: UIImage)
    func showRefreshState()
    func showError()
}

protocol ImageViewPresenting {
    func viewDidLoad()
    func tappedView()
}

protocol ImageUrlProviding {
    func getImageUrls(completion: @escaping ([URL]?) -> Void)
}
