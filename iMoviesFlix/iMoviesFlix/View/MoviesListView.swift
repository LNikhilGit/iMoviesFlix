//
//  MoviesListView.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/26/24.
//

import SwiftUI


struct MoviesListView: View {
    // @ObservedObject var viewModel = HomeviewViewModel()
    @State var isMovieSelected = false
    var movies: [Movie]
    var body: some View {
        //ScrollView
        ScrollView(.horizontal) {
            // LazyHGrid
            LazyHGrid(rows: [GridItem(.adaptive(minimum: 200))]){
                // Loop
                ForEach(movies){ movie in
                    
                    //Navigation Destination
                    NavigationLink {
                        SelectedMovieView(movie: movie)
                    } label: {
                        MovieCardView(movie: movie)
                    } //: END Navigation label and DEstination
                    //                                   MovieCardView(movie: movie) .onTapGesture {
                    //                                        isMovieSelected.toggle()
                    //                                    }
                    //                                   .fullScreenCover(isPresented: $isMovieSelected, content: {
                    //                                       SelectedMovieView(movie: movie)
                    //                                   })
                }// End Loop
            }//: End LazyHGrid
        }//: End ScrollView
    }
}


#Preview{
    MoviesListView(movies: [mockMovie])
        .previewLayout(.sizeThatFits)
        .frame(height: 200)
}
