//
//  HomeHeroView.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/26/24.
//

import SwiftUI

struct HomeHeroView: View {
    var body: some View {
        // TabView
        TabView{
            // Loop
            ForEach(0..<3){ _ in
                Image("Dune")
                    .resizable()
                    .scaledToFill()
            } //: End Loop
        }//: END  TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    HomeHeroView()
        .previewLayout(.sizeThatFits)
}
