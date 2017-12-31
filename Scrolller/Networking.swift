//
//  Networking.swift
//  Scrolller
//
//  Created by Andrew Tsukuda on 12/31/17.
//  Copyright © 2017 Andrew Tsukuda. All rights reserved.
//

import Foundation

class Networking {
    let session = URLSession.shared
    let baseUrl = "https://reddit.com/r/"
    //    let baseUrl = "http://127.0.0.1:5000/"
    
    func getImageURL(completion: @escaping (String) -> Void) {
        let fullPath = baseUrl + "pics/random/.json"
        let url = URL(string: fullPath)!
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        session.dataTask(with: request) { (data, resp, err) in
            if let data = data {
                
                let listings = try? JSONDecoder().decode([Listing].self, from: data)
                
                if let listings = listings {
                    let url = listings[0].data?.children?[0].data?.preview?.images?[0].source?.url
                    if let url = url {
                        completion(url)
                    }
                } else {
                    print("Get image Response: \(String(describing: resp))")
                }
                
            }
            }.resume()
        
    }
}
