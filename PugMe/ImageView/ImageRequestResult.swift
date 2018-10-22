//
//  ImageRequestResult.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation
import UIKit

enum ImageRequestResult {
    case success(UIImage)
    case failure(Error)
}

enum ImageRequestError: Error {
    case generic
}
