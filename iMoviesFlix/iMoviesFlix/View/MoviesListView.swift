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
            // Navigation
            NavigationView {
                // ScrollView
                ScrollView(.horizontal) {
                    // HStack
                    HStack{
                        // Loop
                        // or
                        // Lazy GridView or ListView
                        ForEach(movies){ movie in
                            
                            NavigationLink {
                                SelectedMovieView(movie: movie)
                            } label: {
                                MovieCardView(movie: movie)
                            }
//                                    .onTapGesture {
//                                        isMovieSelected.toggle()
//                                    }
//                            }
//                            .fullScreenCover(isPresented: $isMovieSelected, content: {
//                                SelectedMovieView(movie: movie)
//                            })
                        }//: End Loop
                    }//: End HStack
                } //: End ScrollView
            }//: End Navigation
    }
}

#Preview{
    MoviesListView(movies: [mockMovie])
        .previewLayout(.sizeThatFits)
        .frame(height: 200)
}
