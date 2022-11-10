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
        
        ZStack{
            Color.BackGoundBlue
                .ignoresSafeArea()
            
            VStack{
                ScrollView(.horizontal){
                    Text("All")
                        .font(.system(size: 14, weight: .black))
                        .frame(width: 70, height: 32)
                        .foregroundColor(Color.white)
                        .background(Color.PointRed)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                .padding(16)
                
                ScrollView{
                    HStack(alignment: .top, spacing: 22){
                        VStack(spacing: 16){
                            MoveInfoView(movie: knivesOut)
                            MoveInfoView(movie: theAmazingSpiderMan)
                        }
                        VStack(spacing: 16){
                            MoveInfoView(movie: killYourDarlings)
                            MoveInfoView(movie: tenet)
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
