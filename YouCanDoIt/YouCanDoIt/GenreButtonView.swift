//
//  GenreButtonView.swift
//  YouCanDoIt
//
//  Created by 양원모 on 2022/11/14.
//

import SwiftUI

struct GenreButtonView: View {
    
    var genre: Genre
    @State private var isTabed = false

    var body: some View {
        Button(action: {
            isTabed.toggle()
        }){
            Text(genre.text)
                .font(.system(size: 14, weight: .black))
                .frame(width: 70, height: 32)
                .foregroundColor(isTabed ? Color.white : Color.PointRed)
                .background(isTabed ? Color.PointRed : Color.BackGoundBlue)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay(RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.PointRed, lineWidth: 1)
                )
        }

    }
}


//struct GenreButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        GenreButtonView(genre: all)
//    }
//}
