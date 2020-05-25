//
//  DCBooks.swift
//  ComicReadingList
//
//  Created by Scott Speedie on 20/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct DCBook : Identifiable {
    var id = UUID()
    var name: String
    var issue: String
    var content: String
    
    var cover: String { return issue }
    var thumbnailName: String { return issue + "Thumb" }
}

#if DEBUG
let testData = [
    DCBook(name: "the Amazing Spider-Man", issue: "#300", content: "The black suit move on to a new owner"),
    DCBook(name: "the Uncanny X-Men", issue: "#141", content: "Days of Future past"),
    DCBook(name: "the Fantastic Four", issue: "#48", content: "The Coming of Galactus"),
    DCBook(name: "the Fantastic Four", issue: "#52", content: "The First Appearance of Black Panther"),
    DCBook(name: "the Amazing Spider-Man", issue: "#361", content: "First Appearance Of Carnage")
]
#endif
