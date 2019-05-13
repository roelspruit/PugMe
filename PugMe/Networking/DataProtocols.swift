//
//  DataProtocols.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation

protocol DataRequesting {
    func getData(fromUrl url: URL, handler: @escaping (Data?, Error?) -> Void)    
}
