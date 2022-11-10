//
//  MoveInfoView.swift
//  YouCanDoIt
//
//  Created by 양원모 on 2022/11/09.
//

import SwiftUI

struct MoveInfoView: View {
    
    var movie: Movie
    
    var body: some View {
       
        ZStack(alignment: .top){
            //포스터 이미지
            Image(movie.poster)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .frame(width: 168, height: 248)
            
            //영화 제목, 부제목
            VStack{
                Text(movie.title)
                    .font(.system(size: 18, weight: .black))
                    .frame(width: 152)
                    .padding(.top, 16)
                    .padding([.trailing, .leading], 8)
                    .background(Color.white)
                Text(movie.subtitle)
                    .font(.system(size: 14, weight: .light))
                    .frame(width: 152)
                    .padding(.bottom, 16)
                    .padding([.trailing, .leading], 8)
                    .background(Color.white)
                    .cornerRadius(8, corners: .bottomRight)
                    .cornerRadius(8, corners: .bottomLeft)
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 224)
            
            //하트
            Circle()
                .frame(width: 36,height: 36)
                .foregroundColor(Color.white)
                .padding(.top, 205)
            Image(systemName: movie.heart)
                .resizable()
                .frame(width: 19.39, height: 17.93)
                .foregroundColor(Color.PointRed)
                .padding(.top,214)
        }
        
    }
}

//struct MoveInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        MoveInfoView()
//    }
//}
