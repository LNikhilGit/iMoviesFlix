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
                ScrollView(.horizontal) {
                    // HStack
                    LazyHGrid(rows: [GridItem(.adaptive(minimum: 200))]){
                        // Loop
                        // or
                        // Lazy GridView or ListView
                        ForEach(movies){ movie in
                            
                            NavigationLink {
                                SelectedMovieView(movie: movie)
                            } label: {
                                MovieCardView(movie: movie)
                            }
//                                   MovieCardView(movie: movie) .onTapGesture {
//                                        isMovieSelected.toggle()
//                                    }
//                                   .fullScreenCover(isPresented: $isMovieSelected, content: {
//                                       SelectedMovieView(movie: movie)
//                                   })
                            }
                        }//: End Loop
                    }//: End HStack
                //} //: End ScrollView
            }//: End Navigation
    }


#Preview{
    MoviesListView(movies: [mockMovie])
        .previewLayout(.sizeThatFits)
        .frame(height: 200)
}
