//
//  PlaylistDetailView.swift
//  Project1_PlaylistViewer
//
//  Created by Kevin Brivio on 20/06/24.
//

import SwiftUI

struct PlaylistDetailView: View {
    let playlist: Playlist
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                VStack {
                    Image(playlist.coverImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: proxy.size.width)
                        .cornerRadius(10)
                        .padding(5)
                    Text(playlist.title)
                        .font(.largeTitle)
                        .padding(.bottom, 10)
                    Text("Lorem Ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis massa et eros volutpat posuere a vel nisl.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding()
                    Spacer()
                }
                VStack {
                    Spacer()
                    MusicControlView()
                        .background(Color.white)
                }
                .padding(.bottom, 15)
            }
            .navigationTitle(playlist.title)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

#Preview {
    PlaylistDetailView(playlist: Playlist(title: "Chill Hits", coverImage: "chill"))
}
