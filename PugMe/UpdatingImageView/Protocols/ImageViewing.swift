//
//  ImageViewing.swift
//  PugMe
//
//  Created by Roel Spruit on 12/04/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Foundation
import UIKit

protocol ImageViewing {
    func showImage(_ image: UIImage)
    func showRefreshState()
    func showError()
}
