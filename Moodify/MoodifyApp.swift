//
//  MoodifyApp.swift
//  Moodify
//
//  Created by Sofian Smimid on 06/06/2025.
//

import SwiftUI

@main
struct MoodifyApp: App {
    @StateObject var viewModel = PlaylistViewModel()

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(viewModel)
        }
    }
}
