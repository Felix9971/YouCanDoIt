//
//  GenreButtonView.swift
//  YouCanDoIt
//
//  Created by 양원모 on 2022/11/14.
//

import SwiftUI

struct GenreButtonView: View {

    let buttons = ["All", "Sci-Fi", "Action", "Drama", "Thriller", "Music", "Adventure"]
    @State private var buttonSelected: Int? = 0

    var body: some View {
        ForEach(0..<buttons.count) { button in
            Button(action: {
                self.buttonSelected = button
            }){
                Text("\(self.buttons[button])")
                    .font(.system(size: 14, weight: .black))
                    .frame(width: 70, height: 32)
                    .foregroundColor(self.buttonSelected == button ? Color.white : Color.PointRed)
                    .background(self.buttonSelected == button ? Color.PointRed : Color.BackGoundBlue)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .overlay(RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.PointRed, lineWidth: 1)
                    )
            }
        }

    }
}


struct GenreButtonView_Previews: PreviewProvider {
    static var previews: some View {
        GenreButtonView()
    }
}
