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
                Image("Poster0")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .frame(width: 168, height: 248)
                ZStack{
                    Circle()
                        .frame(width: 36,height: 36)
                        .foregroundColor(Color.white)
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 19.39, height: 17.93)
                        .foregroundColor(Color.PointRed)
                }
                ZStack{
                    Rectangle()
                        .frame(width: 168, height: 67)
                        .cornerRadius(8, corners: .bottomRight)
                        .cornerRadius(8, corners: .bottomLeft)
                        .foregroundColor(Color.white)
                    VStack{
                        Text("Knives Out")
                            .font(.system(size: 18, weight: .black))
                            .frame(width: 168)
                        Text("Who hid the knife?")
                            .font(.system(size: 14, weight: .light))
                            .frame(width: 168)
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
