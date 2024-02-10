//
//  HomeviewViewModel.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/26/24.
//

import Foundation

struct Person {
    
}

class HomeviewViewModel: ObservableObject{
    
    @Published var popularMovies: [Movie] = []
    @Published var upcomingMovies: [Movie] = []
    @Published var topRatedMovies: [Movie] = []
    @Published var popularPeopleList: [People] = []
    
    func getPopularMovieData(){

        ApiCaller.shared.getResponse(endpoint: .popular, for: PopularMovies.self) { [weak self] results in
            guard let self = self else{
                return
            }
            DispatchQueue.main.async {
                switch results {
                case .success(let movies):
                    //print(movies)
                    self.popularMovies = movies.results
                   // print(movie)
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    // Upcoming Movies function call
    
    func getUpcomingMovieData(){
        
        
        ApiCaller.shared.getResponse(endpoint: .upcoming, for: PopularMovies.self) { [weak self] results in
            guard let self = self else{
                return
            }
            DispatchQueue.main.async {
                switch results {
                case .success(let movies):
                    //print(movies)
                    self.upcomingMovies = movies.results
                   // print(movie)
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    // TopRated movies function call
    func getTopRatedMovieData(){
        
        ApiCaller.shared.getResponse(endpoint: .topRated, for: PopularMovies.self) { [weak self] results in
            guard let self = self else{
                return
            }
            DispatchQueue.main.async {
                switch results {
                case .success(let movies):
                    //print(movies)
                    self.topRatedMovies = movies.results
                   // print(movie)
                case .failure(let error):
                    print(error)
                }
            }
        }

    }
    // PopularPeopleList
    
    func getPopularPeopleList(){

        ApiCaller.shared.getResponse(endpoint: .popularPerson, for: PopularPeopleList.self) { [weak self] results in
            guard let self = self else {
                return
            }
            DispatchQueue.main.async {
                
                switch results{
                case .success(let peoples):
                    print(peoples)
                    self.popularPeopleList = peoples.results
                case .failure(let error):
                    print(error)
                }
            }
            
        }
    }
}



//  HomeviewViewModel.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/26/24.


//import Foundation
//
//class HomeviewViewModel: ObservableObject{
//    
//    @Published var popularMovies: [Movie] = []
//    @Published var upcomingMovies: [Movie] = []
//    @Published var topRatedMovies: [Movie] = []
//    @Published var popularPeopleList: [People] = []
//    
//    func getPopularMovieData(){
//        
//        ApiCaller.shared.getPopularMovies { [weak self]
//            results in
//            guard let self = self else{
//                return
//            }
//            DispatchQueue.main.async {
//                switch results{
//                case .success(let movies):
//                    //print(movies)
//                    self.popularMovies = movies
//                   // print(movie)
//                case .failure(let error):
//                    print(error)
//                }
//            }
//        }
//    }
//    
//    // Upcoming Movies function call
//    
//    func getUpcomingMovieData(){
//        
//        ApiCaller.shared.getUpcomingMovies { [weak self]
//            results in
//            guard let self = self else{
//                return
//            }
//            DispatchQueue.main.async {
//                
//                switch results{
//                case .success(let movies):
//                    //print(movies)
//                    self.upcomingMovies = movies
//                    //print(movie)
//                case .failure(let error):
//                    print(error)
//                }
//            }
//        }
//    }
//    
//    // TopRated movies function call
//    func getTopRatedMovieData(){
//        
//        ApiCaller.shared.getTopRatedMovies { [weak self]
//            results in
//            guard let self = self else{
//                return
//            }
//            DispatchQueue.main.async {
//                
//                switch results{
//                case .success(let movies):
//                    //print(movies)
//                    self.topRatedMovies = movies
//                   // print(movie)
//                case .failure(let error):
//                    print(error)
//                }
//            }
//        }
//    }
//    // PopularPeopleList
//    
//    func getPopularPeopleList(){
//        ApiCaller.shared.getPopularPeopleList{
//            [weak self]
//            results in
//            guard let self = self else{
//                return
//            }
//            DispatchQueue.main.async {
//                
//                switch results{
//                case .success(let peoples):
//                    print(peoples)
//                    self.popularPeopleList = peoples
//                case .failure(let error):
//                    print(error)
//                }
//            }
//            
//        }
//    }
//}
