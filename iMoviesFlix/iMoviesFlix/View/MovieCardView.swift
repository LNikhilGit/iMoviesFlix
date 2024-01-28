//
//  MovieListView.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/25/24.
//

import SwiftUI

struct MovieCardView: View {
    
    @State var movie: Movie
    
    var body: some View {
        // HStack
            HStack {
                // VStack
                VStack{
                    // Image path: https://image.tmdb.org/t/p/w500"
                    var imageURL = "https://image.tmdb.org/t/p/w500\(movie.posterPath)"
                    if let url = URL(string: imageURL){
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: 150)
                                .frame(height: 150)
                        } placeholder: {
                            ProgressView()
                        }
                    }
                }//: End VStack
                .cornerRadius(8)
        }//: End HStack
    }
}

#Preview {
    MovieCardView(movie: mockMovie )
        .previewLayout(.sizeThatFits)
}
