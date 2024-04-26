//
//  ContentView.swift
//  exampleSwiftUI
//
//  Created by lap le on 04/03/2024.
//

import SwiftUI

func handlePress(count: Int){
    print("IndeX \(count)")

}

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
            
            StoryView()
                .tabItem { Label("Story", systemImage: "book") }
            
            FavoriteView()
                .tabItem { Label("Favorite", systemImage: "bookmark") }
            
            FunFactView()
                .tabItem { Label ("Fun Facts", systemImage: "hand.thumbsup") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

