//
//  Genre.swift
//  YouCanDoIt
//
//  Created by 양원모 on 2022/11/08.
//

import SwiftUI

struct Genre: Identifiable {
    var id = UUID()
    var text: String
    var tag: Int
}

//데이터 누수 해결 방법을 모르겠어요...
var all : Genre = Genre(text: "All", tag: 0)
var scifi : Genre = Genre(text: "Sci-Fi", tag: 1)
var action : Genre = Genre(text: "Action", tag: 2)
var drama : Genre = Genre(text: "Drama", tag: 3)
var thriller : Genre = Genre(text: "Thriller", tag: 4)
var music : Genre = Genre(text: "Music", tag: 5)
var adventure : Genre = Genre(text: "Adventure", tag: 6)

var genreData : [Genre] = [all, scifi, action, drama, thriller, music, adventure]
