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
}

//데이터 누수 해결 방법을 모르겠어요...
var all : Genre = Genre(text: "All")
var scifi : Genre = Genre(text: "Sci-Fi")
var action : Genre = Genre(text: "Action")
var drama : Genre = Genre(text: "Drama")
var thriller : Genre = Genre(text: "Thriller")
var music : Genre = Genre(text: "Music")
var adventure : Genre = Genre(text: "Adventure")

var genreData : [Genre] = [all, scifi, action, drama, thriller, music, adventure]
