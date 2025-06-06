//
//  Mood.swift
//  Moodify
//
//  Created by Sofian Smimid on 06/06/2025.
//


import SwiftUI

struct Mood: Identifiable {
    let id = UUID()
    let name: String
    let emoji: String
    let color: Color
}

let moods: [Mood] = [
    Mood(name: "Triste", emoji: "😢", color: .blue),
    Mood(name: "Énergique", emoji: "⚡️", color: .yellow),
    Mood(name: "Chill", emoji: "😎", color: .mint),
    Mood(name: "Heureux", emoji: "😊", color: .orange)
]