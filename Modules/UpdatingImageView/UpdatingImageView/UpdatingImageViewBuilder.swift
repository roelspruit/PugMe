//
//  UpdatingImageViewBuilder.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation
import UIKit

public final class UpdatingImageViewBuilder {
    
    public static func build(imageDownloader: ImageDownloading, imageUrlProvider: ImageUrlProviding) -> UIViewController {
        
        let view = ImageViewController()
        let presenter = ImageViewPresenter(view: view,
                                           imageDownloader: imageDownloader,
                                           imageUrlProvider: imageUrlProvider)
        
        view.presenter = presenter
        return view
    }
}
