//
//  APIRequest.swift
//  TestDevVenturus
//
//  Created by Tatiana Rico on 11/06/20.
//  Copyright © 2020 Tatiana Rico. All rights reserved.
//

import Foundation


class APIRequest {
    
    let basePath = "https://api.imgur.com/3/gallery/search/?q=cats"
    
    static let configuration: URLSessionConfiguration = {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = ["Authorization":"Client-ID 93c78d551b99a41"]
        configuration.allowsCellularAccess = true
        configuration.timeoutIntervalForRequest = 40
        return configuration
    }()
    
    let session = URLSession(configuration: configuration)
    
    func loadCats(completion: @escaping ([DataCat]?, Bool)-> Void) {
        
        guard let url = URL(string: basePath) else {return}
        
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            guard let response =  response as? HTTPURLResponse else {return}
            if response.statusCode == 200 {
                do{
                    let json = try JSONDecoder().decode(CatModel.self, from: data)
                    print(json)
                    DispatchQueue.main.async {
                        completion(json.data, true)
                    }
                } catch {
                    completion(nil,false)
                }
            }else {
                completion(nil, false)
            }
        }
        task.resume()
    }
}
