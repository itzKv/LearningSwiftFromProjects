//
//  TitleView.swift
//  Project2_CloningInstagramHomePage
//
//  Created by Kevin Brivio on 21/06/24.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        HStack {
            Text("Instagram")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack (spacing: 16) {
                Button(action: {}) {
                    Image(systemName: "plus")
                        .font(.system(size: 20))
                }
                .overlay(RoundedRectangle(cornerSize: CGSize(width: 4, height: 4)).stroke(Color.black))
                
                Button(action: {}) {
                    Image(systemName: "heart")
                        .font(.system(size: 20))
                }
                Button(action: {}) {
                    Image(systemName: "message")
                        .font(.system(size: 20))
                }
            }
            .foregroundColor(.black)
        }
        .padding(EdgeInsets(                top: 12, leading: 12, bottom: 4, trailing: 12))
    }
}

#Preview {
    TitleView()
}
