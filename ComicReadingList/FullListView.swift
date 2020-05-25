//
//  FullListView.swift
//  ComicReadingList
//
//  Created by Scott Speedie on 25/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct FullListView: View {
    
    var marvelComicBook: [ComicBook] = []
    var dcComicBook: [ComicBook] = []
    
    var body: some View {
        
        NavigationView{
            List{
                
                Section(header: Text("Marvel")
                    .font(.headline)){
                        ForEach(marvelComicBook) { comic in
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
                
                Section(header: Text("DC")
                    .font(.headline)){
                        ForEach(dcComicBook) { comic in
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
            .navigationBarTitle(Text("Full Reading List"))
            .listStyle(GroupedListStyle())
        }
    }
}

struct FullListView_Previews: PreviewProvider {
    static var previews: some View {
        FullListView(marvelComicBook: marvelComicData, dcComicBook: dcComicData)
    }
}
