//
//  PlaylistCardView.swift
//  Moodify
//
//  Created by Sofian Smimid on 06/06/2025.
//


import SwiftUI

struct PlaylistCardView: View {
    let playlist: Playlist

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(playlist.title)
                .font(.title3)
                .bold()
                .foregroundColor(.white)

            Text(playlist.artist)
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.8))

            if let url = playlist.link {
                Link("🎧 Écouter", destination: url)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .underline()
            }
        }
        .padding()
        .background(playlist.mood.color.opacity(0.6))
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}