//
//  PlaylistTableView.swift
//  Project1_PlaylistViewer
//
//  Created by Kevin Brivio on 20/06/24.
//

import SwiftUI

struct PlaylistTableView: View {
    @State private var playlists = [
      Playlist(title: "Chill Hits", coverImage: "chill"),
      Playlist(title: "Indie Mix", coverImage: "indie"),
      Playlist(title: "Hip Hop Vibes", coverImage: "hiphop"),
      Playlist(title: "Pop Party", coverImage: "pop")
    ]

    var body: some View {
        NavigationView{
            List {
                ForEach(playlists) { playlist in
                    PlaylistView(playlist: playlist)
                }
                .onDelete { indexSet in
                    playlists.remove(atOffsets: indexSet)
                }
                .onMove { indices, newOffset in
                    playlists.move(fromOffsets: indices, toOffset: newOffset)
                }
            }
            .navigationTitle("My Playlists")
            .navigationBarItems(trailing: EditButton())
        }
    }
  }

#Preview {
    PlaylistTableView()
}
