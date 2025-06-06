//
//  PlaylistListView.swift
//  Moodify
//
//  Created by Sofian Smimid on 06/06/2025.
//


import SwiftUI

struct PlaylistListView: View {
    let mood: Mood
    @EnvironmentObject var viewModel: PlaylistViewModel

    var body: some View {
        List {
            ForEach(viewModel.playlists(for: mood)) { playlist in
                VStack(alignment: .leading) {
                    Text(playlist.title)
                        .font(.headline)
                    Text(playlist.artist)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
        .navigationTitle("\(mood.emoji) \(mood.name)")
        .toolbar {
            NavigationLink("Ajouter", destination: AddPlaylistView(mood: mood))
        }
    }
}