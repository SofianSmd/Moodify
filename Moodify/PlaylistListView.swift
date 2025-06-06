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
        ZStack {
            mood.color.opacity(0.05).ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(viewModel.playlists(for: mood)) { playlist in
                        PlaylistCardView(playlist: playlist)
                            .padding(.horizontal)
                    }
                }
                .padding(.top)
            }
        }
        .navigationTitle("\(mood.emoji) \(mood.name)")
        .toolbar {
            NavigationLink("Ajouter", destination: AddPlaylistView(mood: mood))
        }
    }
}
