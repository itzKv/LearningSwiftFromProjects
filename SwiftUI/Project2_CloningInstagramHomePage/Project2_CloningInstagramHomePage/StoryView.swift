//
//  StoryView.swift
//  Project2_CloningInstagramHomePage
//
//  Created by Kevin Brivio on 21/06/24.
//

import SwiftUI

struct StoryView: View {
    let persons = DemoStore.shared.getPersons()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack(alignment: .top, spacing: 8) {
                ForEach(persons) { person in
                    StoryItemView(person: person)
                        .padding(4)
                }
            }
        }
        .padding(.leading, 10)
        .listRowInsets(EdgeInsets())
    }
}

struct StoryItemView : View {
    let person: Person
    var body: some View {
        VStack(spacing: 8) {
            Button(action: {}) {
                Image("placeholder")
                    .resizable()
                    .frame(width: 64, height: 64, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(.red, lineWidth: 2))
            }
            Text(person.name)
                .font(.caption)
                .lineLimit(1)
        }
        .frame(width: 72)
    }
}

#Preview {
    StoryView()
}
