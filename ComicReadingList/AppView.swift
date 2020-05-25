//
//  AppView.swift
//  ComicReadingList
//
//  Created by Scott Speedie on 25/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        
        TabView {
            ContentView()
                .tabItem {
                    VStack {
                        Image(systemName: "book.fill")
                        Text("Reading List")
                    }
            }
            
            WishListView()
                .tabItem {
                    VStack {
                        Image(systemName: "eye.fill")
                        Text("Wish List")
                    }
            }
            
            
        }
    }
}

struct AppView_Previews: PreviewProvider {
    
    static let wishList = WishList()
    
    static var previews: some View {
        AppView().environmentObject(wishList)
    }
}
