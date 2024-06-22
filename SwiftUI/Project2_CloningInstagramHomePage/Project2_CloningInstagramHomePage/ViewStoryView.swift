//
//  ViewStoryView.swift
//  Project2_CloningInstagramHomePage
//
//  Created by Kevin Brivio on 22/06/24.
//

import SwiftUI

struct ViewStoryView: View {
    @State private var progress = 0.3
    var body: some View {
        ZStack {
            Image("placeholder")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                .ignoresSafeArea()

            VStack {
                HStack {
                    Image("placeholder")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.red, lineWidth: 2))
                    Spacer()
                    Slider(value: $progress)
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ViewStoryView()
}
