//
//  MovieListView.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/25/24.
//

import SwiftUI

struct MovieCardView: View {
    
    var body: some View {
        HStack {
            VStack{
                // Image
                Image("")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 100)
                    .padding()
                //: End Image
                
                // Title
                Text("Movie")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .lineLimit(1)
                
            }.background(Color.white)
                .cornerRadius(8)
        }
    }
}

#Preview {
    MovieCardView()
        .previewLayout(.sizeThatFits)
}
