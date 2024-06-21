//
//  MusicControlView.swift
//  Project1_PlaylistViewer
//
//  Created by Kevin Brivio on 20/06/24.
//

import SwiftUI

struct MusicControlView: View {
    @State private var isPlaying = false
    @State private var volume = 0.4
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                Text("0:00")
                Slider(value: $volume)
                Text("3.45")
            }
            .padding(10)
            HStack (spacing: 30) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "backward.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.gray)
                })
                Button(action: {
                    self.isPlaying.toggle()
                }) {
                    Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.blue)
                }
                Button(action: {}, label: {
                    Image(systemName: "forward.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.gray)
                })
            }
        }
    }
}

#Preview {
    MusicControlView()
}
