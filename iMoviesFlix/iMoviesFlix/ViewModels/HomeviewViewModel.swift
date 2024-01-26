//
//  HomeviewViewModel.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/26/24.
//

import Foundation

class HomeviewViewModel: ObservableObject{
    
    func getTrendingData(){
        
        ApiCaller.shared.getPopularMovies { results in
            
            switch results{
            case .success(let movies):
                print(movies[0].)
                
            case .failure(let error):
                print(error)
            }
        }
    }
}
