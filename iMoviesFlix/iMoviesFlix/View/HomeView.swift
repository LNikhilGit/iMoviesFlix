//
//  HomeView.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/25/24.
//

import SwiftUI  

struct HomeView: View {
    
   @ObservedObject var viewModel = HomeviewViewModel()
    @State var isMovieSelected = false
    
    //@State var movies: [Movie] = []
    
    var body: some View {
        ScrollView(.vertical){
            VStack{
                // HeroView
                VStack{
                    HomeHeroView()
                        .frame(height: 400)
                }
                
                // Popular Movies
                VStack(alignment: .leading) {
                    // Text
                    Spacer()
                    Text("Popular Movies")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                    //: Text
                    MoviesListView(movies: viewModel.popularMovies)
                    Spacer()
                }
                .frame(height: 200)
                .onAppear(perform: {
                    viewModel.getPopularMovieData()
                })
                
                
                // Upcoming movies
                VStack(alignment: .leading) {
                    
                    Spacer()
                    // Text
                    Text("Upcoming Movies")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                    //: Text
                    MoviesListView(movies: viewModel.upcomingMovies)
                    Spacer()
                }
                .frame(height: 200)
                .onAppear(perform: {
                    viewModel.getUpcomingMovieData()
                })
                
                
                // Trending Movies
                VStack(alignment: .leading) {
                    
                    Spacer()
                    // Text
                    Text("Trending Movies")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                    //: Text
                    MoviesListView(movies: viewModel.topRatedMovies)
                    Spacer()
                }
                .frame(height: 200)
                .onAppear(perform: {
                    viewModel.getTopRatedMovieData()
                })
            }
        }
    }
}

#Preview {
    HomeView()
        .previewLayout(.sizeThatFits)
}
