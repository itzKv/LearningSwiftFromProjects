//
//  DemoStore.swift
//  Project2_CloningInstagramHomePage
//
//  Created by Kevin Brivio on 21/06/24.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let name: String
}

struct DemoStore {
    static let shared = DemoStore()
    
    func getPersons() -> [Person] {
        var persons = [Person]()
        var desc = Desc.shared
        for _ in 0..<20 {
            let person = Person(name: desc.words())
            persons.append(person)
        }
        return persons
    }
}

struct Desc {
    // get random strings
    static let shared = Desc()
    let text = "What a wonderful car! I took this photo with an incredible landscape."
    
    func words(_ size: Int = 1) -> String {
        let word = text.components(separatedBy: " ")
        var randomWordArray = [String]()
        for _ in 0..<size {
            if let randomWord = word.randomElement() {
                randomWordArray.append(randomWord)
            }
        }
        return randomWordArray.joined(separator: " ")
    }
}
