//
//  PlaylistView.swift
//  Project1_PlaylistViewer
//
//  Created by Kevin Brivio on 20/06/24.
//

import SwiftUI

struct Playlist: Identifiable {
    let id = UUID()
    let title: String
    let coverImage: String
}

struct PlaylistView: View {
    let playlist: Playlist

    var body: some View {
      NavigationLink(destination: PlaylistDetailView(playlist: playlist)) {
        HStack {
          Image(playlist.coverImage)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 70, height: 70)
            .cornerRadius(5)
            .padding(.leading, 8)
          Text(playlist.title)
            .font(.headline)
            .lineLimit(1)
          Spacer()
        }
        .padding(.vertical, 8)
      }
    }
  }

#Preview {
    PlaylistView(playlist: Playlist(title: "Chill Abiez", coverImage: "chill"))
}
