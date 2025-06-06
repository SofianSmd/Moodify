//
//  AddPlaylistView.swift
//  Moodify
//
//  Created by Sofian Smimid on 06/06/2025.
//


import SwiftUI

struct AddPlaylistView: View {
    let mood: Mood
    @EnvironmentObject var viewModel: PlaylistViewModel

    @Environment(\.dismiss) var dismiss

    @State private var title = ""
    @State private var artist = ""
    @State private var link = ""

    var body: some View {
        Form {
            TextField("Titre", text: $title)
            TextField("Artiste", text: $artist)
            TextField("Lien (optionnel)", text: $link)

            Button("Enregistrer") {
                let url = URL(string: link)
                viewModel.addPlaylist(title: title, artist: artist, link: url, mood: mood)
                dismiss()
            }
            .disabled(title.isEmpty || artist.isEmpty)
        }
        .navigationTitle("Ajouter 🎶")
    }
}