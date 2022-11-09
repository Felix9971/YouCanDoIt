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
            
            ZStack{
                //포스터 이미지
                Image("Poster0")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .frame(width: 168, height: 248)
                
                //영화 제목, 부제목
                VStack{
                    Text("Knives Out")
                        .font(.system(size: 18, weight: .black))
                        .frame(width: 152)
                        .padding(.top, 16)
                        .padding([.trailing, .leading], 8)
                        .background(Color.white)
                    Text("Who hid the knife?")
                        .font(.system(size: 14, weight: .light))
                        .frame(width: 152)
                        .padding(.bottom, 16)
                        .padding([.trailing, .leading], 8)
                        .background(Color.white)
                        .cornerRadius(8, corners: .bottomRight)
                        .cornerRadius(8, corners: .bottomLeft)
                }
                .padding(.top, 265)
                
                //하트
                Circle()
                    .frame(width: 36,height: 36)
                    .foregroundColor(Color.white)
                    .padding(.top, 205)
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 19.39, height: 17.93)
                    .foregroundColor(Color.PointRed)
                    .padding(.top, 205)
                
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
