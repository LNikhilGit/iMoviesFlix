//
//  ApiCaller.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/26/24.
//

import Foundation


enum ApiError: Error{
    case failedToGetData
}


enum Endpoint {
    
    case popular
    case topRated
    case upcoming
    case popularPerson
    
    var baseURL: URL {
     URL(string: "https://api.themoviedb.org")!
    }
    
    var path: String {
        switch self {
        case .popular:
             "/3/movie/popular"
        case .topRated:
            "3/movie/upcoming"
        case .upcoming:
            "3/movie/top_rated"
        case .popularPerson:
            "/3/trending/person/day"
        }
    }
    

    var httpMethod: String {
        switch self {
        case .popular, .topRated, .upcoming:
            return "GET"
        default:
            return "POST"
        }
    }
    
    var headers: [String: String] {
        ["accept": "application/json",
         "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkYTAwMWNkNDMwNTk4NDRlMjc3ZWVkYWY2MWQ5NTdjZiIsInN1YiI6IjY1YTAyMTViNTliYzA3MDEyNjYzNzMyNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.w3j0lCKkUGwoY0lacCOlbpjKnYgihLwR0FNk3S8-yaA"]
    }
        
    
    var urlRequest: URLRequest {
        var url = baseURL
        url.append(path: self.path)
        //print(url.absoluteString)
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = self.httpMethod
        urlRequest.allHTTPHeaderFields = headers
        return urlRequest
    }
    
}




class ApiCaller {
    
    // Call Generics
    
    static let shared = ApiCaller()
        
    
    func getResponse<T: Codable>(endpoint: Endpoint, for: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: endpoint.urlRequest, completionHandler: { (data, response, error) -> Void in

            guard let data = data, error == nil else{
                return
            }
            do{
                let results = try JSONDecoder().decode(T.self, from: data)
                completion(.success(results))
                
            } catch{
                completion(.failure(error))
            }
        })

        dataTask.resume()

    }
}


//
//  ApiCaller.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/26/24.
//

//import Foundation
//
//struct Constants{
//    
//    static let headers = [
//        "accept": "application/json",
//        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkYTAwMWNkNDMwNTk4NDRlMjc3ZWVkYWY2MWQ5NTdjZiIsInN1YiI6IjY1YTAyMTViNTliYzA3MDEyNjYzNzMyNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.w3j0lCKkUGwoY0lacCOlbpjKnYgihLwR0FNk3S8-yaA"
//    ]
//}
//
//enum ApiError: Error{
//    case failedToGetData
//}
//
//class ApiCaller{
//    
//    // Call Generics
//    
//    static let shared = ApiCaller()
//        
//        // Popular movies
//            // url = https://api.themoviedb.org/3/movie/popular?language=en-US&page=1
//    func getPopularMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
//
//        let request = NSMutableURLRequest(url: NSURL(string: "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1")! as URL,
//                                                cachePolicy: .useProtocolCachePolicy,
//                                            timeoutInterval: 10.0)
//        request.httpMethod = "GET"
//        request.allHTTPHeaderFields = Constants.headers
//
//        let session = URLSession.shared
//        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//
//            
//            guard let data = data, error == nil else{
//                return
//            }
//            do{
//                let results = try JSONDecoder().decode(PopularMovies.self, from: data)
//                completion(.success(results.results))
//                
//            } catch{
//                completion(.failure(error))
//            }
//        })
//
//        dataTask.resume()
//        
//    }
//        
//        // upcoming movies
//    //url = https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1
//    
//    func getUpcomingMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
//
//        let request = NSMutableURLRequest(url: NSURL(string: "https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1")! as URL,
//                                                cachePolicy: .useProtocolCachePolicy,
//                                            timeoutInterval: 10.0)
//        request.httpMethod = "GET"
//        request.allHTTPHeaderFields = Constants.headers
//
//        let session = URLSession.shared
//        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//
//            
//            guard let data = data, error == nil else{
//                return
//            }
//            do{
//                let results = try JSONDecoder().decode(PopularMovies.self, from: data)
//                completion(.success(results.results))
//                
//            } catch{
//                completion(.failure(error))
//            }
//        })
//
//        dataTask.resume()
//        
//    }
//        
//        // Top Rated movies
//    // url = https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1
//    func getTopRatedMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
//
//        let request = NSMutableURLRequest(url: NSURL(string: "https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1")! as URL,
//                                                cachePolicy: .useProtocolCachePolicy,
//                                            timeoutInterval: 10.0)
//        request.httpMethod = "GET"
//        request.allHTTPHeaderFields = Constants.headers
//
//        let session = URLSession.shared
//        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//
//            
//            guard let data = data, error == nil else{
//                return
//            }
//            do{
//                let results = try JSONDecoder().decode(PopularMovies.self, from: data)
//                completion(.success(results.results))
//                
//            } catch{
//                completion(.failure(error))
//            }
//        })
//
//        dataTask.resume()
//        
//    }
//    // Popular People ApiCaller
//    // URL: https://api.themoviedb.org/3/trending/person/day?language=en-US
//    
//    func getPopularPeopleList(completion: @escaping (Result<[People], Error>) -> Void){
//
//        let request = NSMutableURLRequest(url: NSURL(string: "https://api.themoviedb.org/3/trending/person/day?language=en-US")! as URL,
//                                                cachePolicy: .useProtocolCachePolicy,
//                                            timeoutInterval: 10.0)
//        request.httpMethod = "GET"
//        request.allHTTPHeaderFields = Constants.headers
//
//        let session = URLSession.shared
//        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//
//            
//            guard let data = data, error == nil else{
//                return
//            }
//            //print(data)
//            do{
//                let results = try JSONDecoder().decode(PopularPeopleList.self, from: data)
//                print(results)
//                completion(.success(results.results))
//                
//                
//            } catch{
//                completion(.failure(error))
//            }
//        })
//
//        dataTask.resume()
//        
//    }
//}
