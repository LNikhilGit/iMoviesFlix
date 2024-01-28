//
//  SelectedMovieView.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/27/24.
//

import SwiftUI

struct SelectedMovieView: View {
@State var movie: Movie
    
    var body: some View {
        // ScrollView
        ScrollView(.vertical) {
            // VStack
            VStack(alignment: .leading){
                // Images from API
                //VStack
                    VStack{
                        // Image path: https://image.tmdb.org/t/p/w500"
                        var imageURL = "https://image.tmdb.org/t/p/w500\(movie.backdropPath)"
                        if let url = URL(string: imageURL){
                            // AsyncImage
                            AsyncImage(url: url) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 300, height: 300)
                            } placeholder: {
                                ProgressView()
                            } //: End AsyncImage and Placeholder
                        }//: URL
                    }//: VStack
                    .padding(10)
                
                // App Icon and Buttons and Title
                //VStack
                VStack(alignment: .leading){
                    // Icon
                    // HStack
                    HStack{
                        Image(systemName: "appletv").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text("Apple TV")
                    }//: HStack
                    
                    //MARK: Trailer and Movie Button
                    HStack{
                        // Watch Movie Button
                        Button{
                            
                        }label: {
                            // ZStack
                            ZStack{
                                // RoundedRectangle
                                RoundedRectangle(cornerRadius: 3).fill(.white)
                                //: RoundedRectangle
                                
                                //HStack
                                HStack{
                                    Image(systemName: "play.fill")
                                    Text("Watch Movie").font(.title2)
                                        .fontWeight(.semibold)
                                }//: End HStack
                                .foregroundColor(.black)
                                .padding(10)
                            }//: ZStack
                        } //: End Button and Label
                        
                        // Trailer Button
                        //Button and Label
                        Button{
                            
                        }label: {
                            //ZStack
                            ZStack{
                                // RoundedRectangle
                                RoundedRectangle(cornerRadius: 3).fill(.white)
                                    .frame(width: 100)
                                //: End RoundedRectangle
                                
                                // HStack
                                HStack{
//                                    Image(systemName: "play.fill")
                                    // Text
                                    Text("TRAILER").font(.title2)
                                        .fontWeight(.semibold)
                                } //: HStack
                                .foregroundColor(.black)
                                .padding(10)
                            } //: End ZStack
                        }//: End Button Label
                        
                    }
                    // Movie Title and Description
                    // VStack
                    VStack(alignment: .leading){
                        // Title Text
                        Text(movie.title).font(.title3)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        // Overview Text
                        Text(movie.overview).font(.footnote)
                            .fontWeight(.semibold)
                    }//: End VStack
                    
                }
                .padding(10)//: End VStack
                
            }//: End VStack

        } //: End ScrollView
        
    }
}

#Preview {
    SelectedMovieView(movie: mockMovie)
        .previewLayout(.sizeThatFits)
}
