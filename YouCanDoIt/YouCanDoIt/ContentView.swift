//
//  ContentView.swift
//  YouCanDoIt
//
//  Created by Jiyoung Park on 2022/11/06.
//

import SwiftUI

extension Color {
    static let PointRed = Color("Red")
    static let BackGoundBlue = Color("Blue")
}

struct ContentView: View {
    
    var genres: [Genre] = genreData
    
    var body: some View {
        
        NavigationView {
            ZStack{
                //배경
                Color.BackGoundBlue
                    .ignoresSafeArea()
                
                VStack{
                    Text("Filog")
                        .font(.system(size: 20, weight: .black))
                        .foregroundColor(Color.white)
                    
                    //장르
                    ScrollView(.horizontal){
                        Text("All")
                            .font(.system(size: 14, weight: .black))
                            .frame(width: 70, height: 32)
                            .foregroundColor(Color.white)
                            .background(Color.PointRed)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                    .padding(10)
                    
                    //영화
                    ScrollView{
                        HStack(alignment: .top, spacing: 22){
                            VStack(spacing: 16){
                                NavigationLink(destination: MovieDetailView(movie: knivesOut)) {
                                    MoveInfoView(movie: knivesOut)
                                }
                                NavigationLink(destination: MovieDetailView(movie: theAmazingSpiderMan)) {
                                    MoveInfoView(movie: theAmazingSpiderMan)
                                }
                            }
                            VStack(spacing: 16){
                                NavigationLink(destination: MovieDetailView(movie: killYourDarlings)) {
                                    MoveInfoView(movie: killYourDarlings)
                                }
                                NavigationLink(destination: MovieDetailView(movie: tenet)) {
                                    MoveInfoView(movie: tenet)
                                }

                            }
                        }
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
