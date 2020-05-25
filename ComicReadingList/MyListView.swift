//
//  MyListView.swift
//  ComicReadingList
//
//  Created by Scott Speedie on 25/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct MyListView: View {
    
    var marvelComicBook: [ComicBook] = []
    var dcComicBook: [ComicBook] = []
    
    var body: some View {
        
        NavigationView{
            List{
                
                Section(header: Text("Marvel")
                    .font(.headline)){
                        ForEach(marvelComicBook) { comic in
                            if comic.owned {
                                NavigationLink(destination: ComicContentView(comicBook: comic)) {
                                    HStack {
                                        Image(comic.issue + "Thumb")
                                        VStack(alignment: .leading){
                                            Text(comic.name)
                                            HStack{
                                                if comic.owned {
                                                    Image(systemName: "checkmark.square.fill")
                                                        .foregroundColor(.blue)
                                                }
                                                else{
                                                    Image(systemName: "xmark.square.fill")
                                                        .foregroundColor(.red)
                                                }
                                                
                                                Text(comic.issue)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                }
                
                Section(header: Text("DC")
                    .font(.headline)){
                        ForEach(dcComicBook) { comic in
                            if comic.owned {
                                NavigationLink(destination: ComicContentView(comicBook: comic)) {
                                    HStack {
                                        Image(comic.issue + "Thumb")
                                        VStack(alignment: .leading){
                                            Text(comic.name)
                                            HStack{
                                                if comic.owned {
                                                    Image(systemName: "checkmark.square.fill")
                                                        .foregroundColor(.blue)
                                                }
                                                else{
                                                    Image(systemName: "xmark.square.fill")
                                                        .foregroundColor(.red)
                                                }
                                                Text(comic.issue)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                }
            }
            .navigationBarTitle(Text("Your Comics"))
            .listStyle(GroupedListStyle())
        }
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView(marvelComicBook: marvelComicData, dcComicBook: dcComicData)
    }
}
