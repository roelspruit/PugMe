//
//  ImageUrlProviding.swift
//  PugMe
//
//  Created by Roel Spruit on 12/04/2019.
//  Copyright © 2019 Roel Spruit. All rights reserved.
//

import Foundation

protocol ImageUrlProviding {
    func getImageUrls(completion: @escaping ([URL]?) -> Void)
}
