//
//  SelectedMovieView.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/27/24.
//

import SwiftUI

struct SelectedMovieView: View {
    @Environment(\.presentationMode) var presentationMode
@State var movie: Movie
    
    var body: some View {
        
        ScrollView(.vertical) {
            VStack(alignment: .leading){
                    VStack{
                        // Image path: https://image.tmdb.org/t/p/w500"
                        var imageURL = "https://image.tmdb.org/t/p/w500\(movie.posterPath)"
                        if let url = URL(string: imageURL){
                            AsyncImage(url: url) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                            } placeholder: {
                                ProgressView()
                            }
                        }
                    }
                    VStack{
                        Button{
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "delete.left")
                                .tint(Color.red)
                                .font(.title2)
                        }
                    }
                VStack(alignment: .leading){
                    // Icon
                    HStack{
                        Image(systemName: "appletv").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Apple TV")
                    }
                    
                    //MARK: Trailer and Movie Button
                    HStack{
                        // Watch Movie Button
                        Button{
                            
                        }label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 3).fill(.white)
                                HStack{
                                    Image(systemName: "play.fill")
                                    Text("Watch Movie").font(.title2)
                                        .fontWeight(.semibold)
                                }
                                .foregroundColor(.black)
                                .padding(10)
                            }
                        }
                        
                        // Trailer Button
                        Button{
                            
                        }label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 3).fill(.white)
                                    .frame(width: 100)
                                HStack{
//                                    Image(systemName: "play.fill")
                                    Text("TRAILER").font(.title2)
                                        .fontWeight(.semibold)
                                }
                                .foregroundColor(.black)
                                .padding(10)
                            }
                        }
                        
                    }
                    // Movie Title and Description
                    VStack(alignment: .leading){
                        Text(movie.title).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text(movie.overview).font(.title3)
                            .fontWeight(.semibold)
                    }
                    
                }
            }

        }
        
    }
}

#Preview {
    SelectedMovieView(movie: mockMovie)
        .previewLayout(.sizeThatFits)
}
