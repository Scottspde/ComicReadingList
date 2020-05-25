//
//  Books.swift
//  ComicReadingList
//
//  Created by Scott Speedie on 18/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct ComicBook : Identifiable {
    var id = UUID()
    var name: String
    var issue: String
    var content: String
    var publisher: String
    var owned: Bool
    
    var cover: String { return issue }
    var thumbnailName: String { return issue + "Thumb" }
}

#if DEBUG
let marvelComicData = [
    ComicBook(name: "the Amazing Spider-Man", issue: "#300", content: "The return of Eddie Brock! And red-and-blue Spider-Man! Is Venom still holding an irrational grunge against the wall-crawler? This is a symbiote smack down you won’t want to miss! Since Amazing Spider-Man #252, Spider-Man has had a black costume. After discovering it was a live symbiote he beat it (In Web Of Spider-Man #1)and started wearing a fabric version. But now...the symbiote has returned...", publisher: "Marvel", owned: true),
    ComicBook(name: "the Uncanny X-Men", issue: "#141", content: "Days of Future Past is a storyline which ran in Uncanny X-Men #141-142 set in Earth-811 where most of Earth's mutants have been killed.  In this future, Rachel Summers psychically sends an adult version of Kitty Pryde known as Kate Pryde back in time to the 1980 in order to avert the events that ravaged their world.", publisher: "Marvel", owned: true),
    ComicBook(name: "the Fantastic Four", issue: "#48", content: "The ATMOGUN erupts the entire palace and the Fantastic Four are forced to deal with the consequences. Black Bolt's evil brother Maximus and the empowered Galactus are behind this evil scheme!", publisher: "Marvel", owned: false),
    ComicBook(name: "the Fantastic Four", issue: "#52", content: "The first appearance of Black Panther! On a mission in the remote wilderness of Wakanda, the Fantastic Four encounter one of Marvel’s most iconic heroes. But how are the Inhumans involved in this earthly encounter? The FF bested in battle by the Black Panther!  In the jungles of Africa the Fantastic Four are called by the king of the Wakandas, only to test the power of the Black Panther.", publisher: "Marvel", owned: false),
    ComicBook(name: "the Amazing Spider-Man", issue: "#361", content: "Carnage unleashed! Criminally insane inmate Cletus Kasady bonds with a symbiote to fulfill his violent urges. Witness Spider-Man’s first battle against Carnage, ending in bloodshed!  Arrested for his crimes, Eddie Brock aka Venom was locked in a cell with savage killer Cletus Kasady. When he made his escape, the symbiote gave birth to a symbiote spawn which possessed Cletus. Altered by being born on Earth, the symbiote became twisted and together they became...CARNAGE!", publisher: "Marvel", owned: true)
]

let dcComicData = [
    ComicBook(name: "The Killing Joke", issue: "#1KJ", content: "One night Batman goes to visit the Joker in Arkham Asylum. While contemplating the futility of their relationship, and that it will only result in either his or the Joker's death in the future, he discovers that the Joker sitting before him is not actually the Joker, but an impostor. Batman threatens the imposter, and asks his infamous question Where is he?!", publisher: "DC", owned: false),
    ComicBook(name: "Batman: Knightfall", issue: "#497", content: "The Dark Knight's greatest enemies have all simultaneously escaped from Arkham Asylum and are preying on Gotham City. With his city under siege, Batman pushes his body to the limit as he takes on The Joker, the Mad Hatter, Poison Ivy, Killer Croc, The Riddler and the Scarecrow. But things get much worse when Bane, the man behind all the madness, confronts an exhausted Batman.", publisher: "DC", owned: false),
    ComicBook(name: "A Death in the Family", issue: "#1ADitF", content: "Jason Todd had never been a popular choice to replace Dick Grayson even after the retcon of the Crisis on Infinite Earths. When the public was allowed to choose whether he would live or die the count went against him. Cue the Joker... and a tire iron.", publisher: "DC", owned: false),
]
#endif

