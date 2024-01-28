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
        // ScrollView
        ScrollView(.vertical){
            // VStack
                VStack{
                    // HeroView
                    //VStack
                    VStack{
                        HomeHeroView()
                            .frame(height: 400)
                    }//: VStack
                    
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
                    // VStack
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
                    } //: VStack
                    .frame(height: 200)
                    .onAppear(perform: {
                        viewModel.getUpcomingMovieData()
                    })
                    
                    
                    // Trending Movies
                    //VStack
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
                    }// END VStack
                    .frame(height: 200)
                    .onAppear(perform: {
                        viewModel.getTopRatedMovieData()
                    })
                } //END Vstack
        } // END ScrollView
    }
}

#Preview {
    // Mark: NavigationView
    NavigationView{
        HomeView()
            .previewLayout(.sizeThatFits)
    } // END NavigationView
}
