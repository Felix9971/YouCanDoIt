//
//  Movie.swift
//  YouCanDoIt
//
//  Created by 양원모 on 2022/11/09.
//

import SwiftUI

struct Movie: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var heart: String
}

//데이터 누수 해결 방법을 모르겠어요...
var knivesOut : Movie = Movie(title: "Knives Out", subtitle: "Who hid the knife?", heart: "heart.fill")
var killYourDarlings : Movie = Movie(title: "Kill Your Darlings", subtitle: "Kill your darlings to\nsave yourself, Lucien\nCarr", heart: "heart.fill")
var theAmazingSpiderMan : Movie = Movie(title: "The Amazing\nSpider-Man 2", subtitle: "Romance?", heart: "heart.slash")
var tenet : Movie = Movie(title: "Tenet", subtitle: "Not time inversion but\nmind inversion", heart: "heart.fill")

var movieData : [Movie] = [knivesOut, killYourDarlings, theAmazingSpiderMan, tenet]

