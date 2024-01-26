//
//  NetworkManager.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/25/24.
//

import Foundation

class NetworkManager {
    
    enum NetworkManagerError: Error{
        case invalidURL
        case urlSession(error: Error)
        case invalidStatusCode(status: Int)
        case failedToDecode
    }
     func fetchData(url: String) async throws -> Data {
         guard let url = URL(string: url) else { throw NetworkManagerError.invalidURL }
         
         let response: (Data, URLResponse)
         do{
             response = try await URLSession.shared.data(from: url)
         }catch {
             throw NetworkManagerError.urlSession(error: error)
     }
         if let statusCode = (response.1 as? HTTPURLResponse)?.statusCode, statusCode != 200 {
                 throw NetworkManagerError.invalidStatusCode(status: statusCode)
             }
     return response.0
     }
    
}

//
//import Foundation
//
//let headers = [
//  "accept": "application/json",
//  "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkYTAwMWNkNDMwNTk4NDRlMjc3ZWVkYWY2MWQ5NTdjZiIsInN1YiI6IjY1YTAyMTViNTliYzA3MDEyNjYzNzMyNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.w3j0lCKkUGwoY0lacCOlbpjKnYgihLwR0FNk3S8-yaA"
//]
//
//let request = NSMutableURLRequest(url: NSURL(string: "https://api.themoviedb.org/3/account/20916669/favorite/movies?language=en-US&page=1&sort_by=created_at.asc")! as URL,
//                                        cachePolicy: .useProtocolCachePolicy,
//                                    timeoutInterval: 10.0)
//request.httpMethod = "GET"
//request.allHTTPHeaderFields = headers
//
//let session = URLSession.shared
//let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//  if (error != nil) {
//    print(error as Any)
//  } else {
//    let httpResponse = response as? HTTPURLResponse
//    print(httpResponse)
//  }
//})
//
//dataTask.resume()
