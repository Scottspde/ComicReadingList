//
//  ComicContentView.swift
//  ComicReadingList
//
//  Created by Scott Speedie on 20/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct ComicContentView: View {
    
    let comicBook: ComicBook
    
    var body: some View {
        
        NavigationView{
            
            ZStack(alignment: .center){
                Image(comicBook.cover)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .opacity(0.3)
                    .edgesIgnoringSafeArea(.all)
                Text(comicBook.content)
                    .font(.headline)
                    .bold()
                    .padding()
            }
            .navigationBarTitle(Text(comicBook.name))
        }
    }
}

struct ComicContentView_Previews: PreviewProvider {
    static var previews: some View {
        ComicContentView(comicBook: ComicBook(name: "Title", issue: "issue", content: "content", publisher: "publisher", owned: true))
    }
}
