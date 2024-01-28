//
//  ApiCaller.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/26/24.
//

import Foundation

struct Constants{
    
    static let headers = [
        "accept": "application/json",
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkYTAwMWNkNDMwNTk4NDRlMjc3ZWVkYWY2MWQ5NTdjZiIsInN1YiI6IjY1YTAyMTViNTliYzA3MDEyNjYzNzMyNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.w3j0lCKkUGwoY0lacCOlbpjKnYgihLwR0FNk3S8-yaA"
    ]
}

enum ApiError: Error{
    case failedToGetData
}

class ApiCaller{
    
    // Call Generics 
    
    static let shared = ApiCaller()
        
        // Popular movies
            // url = https://api.themoviedb.org/3/movie/popular?language=en-US&page=1
    func getPopularMovies(completion: @escaping (Result<[Movie], Error>) -> Void){

        let request = NSMutableURLRequest(url: NSURL(string: "https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = Constants.headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//          if (error != nil) {
//            print(error as Any)
//          } else {
//            let httpResponse = response as? HTTPURLResponse
//            print(data)
//          }
            
            guard let data = data, error == nil else{
                return
            }
            do{
                let results = try JSONDecoder().decode(PopularMovies.self, from: data)
                completion(.success(results.results))
                
            } catch{
                completion(.failure(error))
            }
        })

        dataTask.resume()
        
    }
        
        // upcoming movies
            //url = https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1
        
        // Top Rated movies
            // url = https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1
}

