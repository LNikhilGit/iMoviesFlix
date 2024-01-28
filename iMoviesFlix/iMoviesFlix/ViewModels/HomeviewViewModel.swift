//
//  HomeviewViewModel.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/26/24.
//

import Foundation

class HomeviewViewModel: ObservableObject{
    
    @Published var movie: [Movie] = []
    //@pub
    //@pub trendin
    
    func getTrendingData(){
        
        ApiCaller.shared.getPopularMovies { [weak self]
            results in
            guard let self = self else{
                return
            }

            switch results{
            case .success(let movies):
                //print(movies)
                self.movie = movies
                print(movie)
            case .failure(let error):
                print(error)
            }
        }
    }
}
