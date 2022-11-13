//
//  MovieDetailView.swift
//  YouCanDoIt
//
//  Created by 양원모 on 2022/11/11.
//

import SwiftUI

struct MovieDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

        var buttenBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .frame(width: 14, height: 21)
                    .foregroundColor(Color.white)
            }
        }
    
    var movie: Movie
    
    var body: some View {
        
        ZStack(alignment: .top){
            //배경
            Color.BackGoundBlue
                .ignoresSafeArea()
            
            //포스터 이미지
            Image(movie.poster)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .frame(width: 358, height: 528.48)
                .padding(.top, 24)
            
            //하트
            Circle()
                .frame(width: 76.71, height: 76.71)
                .foregroundColor(Color.white)
                .padding(.top, 459)
            Rectangle()
                .frame(width: 358, height: 130)
                .padding(.top, 497)
                .foregroundColor(Color.white)
            Image(systemName: movie.heart)
                .resizable()
                .frame(width: 42, height: 38)
                .foregroundColor(Color.PointRed)
                .padding(.top, 476)
            
            //영화 제목, 부제목
            VStack{
                Text(movie.title)
                    .font(.system(size: 36, weight: .black))
                    .padding([.bottom,.top], 5)
                Text(movie.subtitle)
                    .font(.system(size: 24, weight: .light))
                    .lineSpacing(6)
                    .frame(width: 324)
                    .padding(.bottom, 32)
                    .padding([.trailing, .leading], 17)
                    .background(Color.white)
                    .multilineTextAlignment(.center)
                    .cornerRadius(8, corners: .bottomRight)
                    .cornerRadius(8, corners: .bottomLeft)
            }
            .padding(.top, 514)
            
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                buttenBack
            }
            ToolbarItem(placement: .principal){
                Text("Filog")
                    .font(.system(size: 20, weight: .black))
                    .foregroundColor(Color.white)
            }
        }
        .navigationBarBackButtonHidden()
        
        
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: tenet)
    }
}
