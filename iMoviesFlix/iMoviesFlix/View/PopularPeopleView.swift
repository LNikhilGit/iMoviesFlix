//
//  PopularPeopleView.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/29/24.
//

import SwiftUI

struct PopularPeopleView: View {
    
    var peoples: [People]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem(.adaptive(minimum: 200))]){
                ForEach(peoples) { people in
                    VStack{
                        // Image path: https://image.tmdb.org/t/p/w500"
                        var imageURL = "https://image.tmdb.org/t/p/w500\(people.profilePath)"
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
                    }
                }
            }
        }
    }
}

#Preview {
    PopularPeopleView(peoples: mockPeople)
}
