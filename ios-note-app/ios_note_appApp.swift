//
//  ios_note_appApp.swift
//  ios-note-app
//
//  Created by Adavize Ozorku on 12/08/2023.
//

import SwiftUI

@main
struct ios_note_appApp: App {
    var body: some Scene {
        WindowGroup {
            NotesView(notes: NotesData.sampleData)
        }
    }
}
