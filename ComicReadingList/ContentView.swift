//
//  ContentView.swift
//  ComicReadingList
//
//  Created by Scott Speedie on 18/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            FullListView(marvelComicBook: marvelComicData, dcComicBook: dcComicData)
                .tabItem {
                    VStack {
                        Image(systemName: "book.fill")
                        Text("Reading List")
                    }
            }
            
            MyListView(marvelComicBook: marvelComicData, dcComicBook: dcComicData)
                .tabItem {
                    VStack {
                        Image(systemName: "person.crop.circle.fill.badge.checkmark")
                        Text("My List")
                    }
            }
            
            WishListView(marvelComicBook: marvelComicData, dcComicBook: dcComicData)
                .tabItem {
                    VStack {
                        Image(systemName: "eye.fill")
                        Text("Wish List")
                    }
            }
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
