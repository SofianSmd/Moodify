//
//  PlaylistViewModel.swift
//  Moodify
//
//  Created by Sofian Smimid on 06/06/2025.
//


import Foundation

class PlaylistViewModel: ObservableObject {
    @Published var playlists: [Playlist] = []

    func playlists(for mood: Mood) -> [Playlist] {
        playlists.filter { $0.mood.id == mood.id }
    }

    func addPlaylist(title: String, artist: String, link: URL?, mood: Mood) {
        let new = Playlist(title: title, artist: artist, link: link, mood: mood)
        playlists.append(new)
    }
}