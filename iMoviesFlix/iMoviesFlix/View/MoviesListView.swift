//
//  MoviesListView.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/26/24.
//

import SwiftUI

struct MoviesListView: View {
    var body: some View {
            // Navigation
            NavigationView {
                // ScrollView
                ScrollView(.horizontal) {
                    // HStack
                    HStack{
                        // Loop
                        ForEach(0..<10){_ in
                            MovieCardView()
                        }//: End Loop
                    }//: End HStack
                } //: End ScrollView
            }//: End Navigation
    }
}

#Preview {
    MoviesListView()
        .previewLayout(.sizeThatFits)
        .frame(height: 200)
}
