//
//  Playlist.swift
//  Moodify
//
//  Created by Sofian Smimid on 06/06/2025.
//


import Foundation

struct Playlist: Identifiable {
    let id = UUID()
    let title: String
    let artist: String
    let link: URL?
    let mood: Mood
}