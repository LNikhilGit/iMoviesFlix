//
//  ContentView.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            
            // Home
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Home")
                
            } // : End Home
            
            // MyMovieLists
            MyMovieLists().tabItem {
                Image(systemName: "checkmark.rectangle")
                Text(" My Stuff")
            } //: End MyMoviesLists
            
            // SearchMovies
            SearchMovies().tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            } //: End Searchmovies
            
            // ProfileSectionView
            ProfileSectionView().tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
        }
    }
}

#Preview {
    ContentView()
}
