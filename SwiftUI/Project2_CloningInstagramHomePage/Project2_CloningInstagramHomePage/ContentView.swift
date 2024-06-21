//
//  ContentView.swift
//  Project2_CloningInstagramHomePage
//
//  Created by Kevin Brivio on 21/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TitleView()
        ScrollView {
            LazyVStack {
                StoryView()
                PostView()
                PostView()
                PostView()
            }
        }
    }
}

#Preview {
    ContentView()
}
