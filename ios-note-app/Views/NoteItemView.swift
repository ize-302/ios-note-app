//
//  ItemView.swift
//  ios-note-app
//
//  Created by Adavize Ozorku on 12/08/2023.
//

import SwiftUI

struct NoteItemView: View {
    let note: NotesData

    var body: some View {
        NavigationLink {
            NoteDetailView(note: note) //destination
        } label: {
            Text(note.title) //label
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var note = NotesData.sampleData[0]
    
    static var previews: some View {
        NoteItemView(note: note)
    }
}
