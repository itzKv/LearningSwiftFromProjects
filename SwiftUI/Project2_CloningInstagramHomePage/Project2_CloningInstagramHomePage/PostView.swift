//
//  PostView.swift
//  Project2_CloningInstagramHomePage
//
//  Created by Kevin Brivio on 21/06/24.
//

import SwiftUI

struct PostView: View {
    @State private var comment: String = ""
    var body: some View {
        Divider()
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image("placeholder")
                    .resizable()
                    .frame(width: 40, height: 40)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Sukuna")
                        .font(.subheadline).bold()
                    Text("Berlin City")
                        .font(.caption)
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("•••")
                }
                .foregroundColor(.black)
            }
            .padding(.leading, 24)
            .padding(.trailing, 6)
            
            Image("placeholder")
                .resizable()
                .scaledToFill()
                .frame(height: 280)
                .frame(maxWidth: .infinity)
                .clipped()
            
            HStack(spacing: 16) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
                Button(action: {}) {
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "location")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "bookmark")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
            }
            .foregroundColor(.black)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            
            VStack(alignment: .leading, spacing: 4) {
                Text("1.4 likes").font(.caption).bold()
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et").font(.caption).bold()
                
                HStack(spacing: 8) {
                    Image("placeholder")
                        .resizable()
                        .frame(width: 30, height:30)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    TextField("Add a comment...", text: $comment).font(.subheadline)
                }
                HStack {
                    Text("3 hours ago")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("•")
                        .foregroundColor(.gray)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("See translation").font(.caption).bold()
                            .foregroundColor(.black)
                    })
                }
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
        .padding(.bottom, 24)
    }
}

#Preview {
    PostView()
}
