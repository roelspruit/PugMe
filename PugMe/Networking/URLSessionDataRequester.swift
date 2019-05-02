//
//  URLSessionDataRequester.swift
//  PugMe
//
//  Created by Roel Spruit on 20/10/2018.
//  Copyright © 2018 DinkyWonder. All rights reserved.
//

import Foundation

class URLSessionDataRequester: DataRequesting {
    
    func getData(fromUrl url: URL, handler: @escaping (Data?, Error?) -> Void) {
        getData(withRequest: URLRequest(url: url), handler: handler)
    }
    
    func getData(withRequest request: URLRequest, handler: @escaping (Data?, Error?) -> Void) {
        let task = URLSession.shared.dataTask(with: request) { (data, _, error) in
            DispatchQueue.main.async {
                handler(data, error)
            }
        }
        task.resume()
    }
    
}
