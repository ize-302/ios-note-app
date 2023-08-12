//
//  ContentView.swift
//  ios-note-app
//
//  Created by Adavize Ozorku on 12/08/2023.
//

import SwiftUI

struct NotesView: View {
    let notes: [NotesData]
    
    var body: some View {
        NavigationView {
            List(notes, id: \.title) {note in
                NoteItemView(note: note)
            }.navigationTitle(Text("Notes"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView(notes: NotesData.sampleData)
    }
}
