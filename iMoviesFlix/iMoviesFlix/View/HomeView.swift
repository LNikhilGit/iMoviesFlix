//
//  HomeView.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/25/24.
//

import SwiftUI  

struct HomeView: View {
    
   @ObservedObject var viewModel = HomeviewViewModel()
    
    //@State var movies: [Movie] = []
    
    var body: some View {
        ScrollView(.vertical){
            VStack{
                // HeroView
                HomeHeroView()
                    .frame(height: 450)
                
                // Popular Movies
                VStack(alignment: .leading) {
                    // Text
                    Text("Popular Movies")
                        .font(.headline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                    //: Text
                    MoviesListView(movies: viewModel.movie)
                }.frame(height: 200)
                    .onAppear(perform: {
                        viewModel.getTrendingData()
                    })
                 
                
                // Upcoming movies
                VStack(alignment: .leading) {
                    // Text
                    Text("Upcoming Movies")
                        .font(.headline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                    //: Text
                    MoviesListView(movies: viewModel.movie)
                }.frame(height: 200)
                    
                
                // Trending Movies
                VStack(alignment: .leading) {
                    // Text
                    Text("Trending Movies")
                        .font(.headline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                    //: Text
                    MoviesListView(movies: viewModel.movie)
                }.frame(height: 200)
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
        .previewLayout(.sizeThatFits)
}
