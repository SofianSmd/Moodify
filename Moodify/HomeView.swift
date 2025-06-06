//
//  HomeView.swift
//  Moodify
//
//  Created by Sofian Smimid on 06/06/2025.
//


import SwiftUI

struct HomeView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Choisis ton humeur")
                    .font(.title)
                    .bold()
                    .padding(.horizontal)

                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(moods) { mood in
                        NavigationLink(destination: PlaylistListView(mood: mood)) {
                            VStack {
                                Text(mood.emoji)
                                    .font(.system(size: 40))
                                Text(mood.name)
                                    .font(.headline)
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(mood.color.opacity(0.2))
                            .cornerRadius(12)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Moodify")
        }
    }
}