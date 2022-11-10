//
//  Movie.swift
//  YouCanDoIt
//
//  Created by 양원모 on 2022/11/09.
//

import SwiftUI

struct Movie: Identifiable {
    var id = UUID()
    var poster: String
    var title: String
    var subtitle: String
    var heart: String
}

//데이터 누수 해결 방법을 모르겠어요...
var knivesOut : Movie = Movie(poster: "Poster0", title: "Knives Out", subtitle: "Who hid the knife?", heart: "heart.fill")
var killYourDarlings : Movie = Movie(poster: "Poster1", title: "Kill Your Darlings", subtitle: "Kill your darlings to\nsave yourself, Lucien\nCarr", heart: "heart.fill")
var theAmazingSpiderMan : Movie = Movie(poster: "Poster2", title: "The Amazing\nSpider-Man 2", subtitle: "Romance?", heart: "heart.slash")
var tenet : Movie = Movie(poster: "Poster3", title: "Tenet", subtitle: "Not time inversion but\nmind inversion", heart: "heart.fill")

var movieData : [Movie] = [knivesOut, killYourDarlings, theAmazingSpiderMan, tenet]

