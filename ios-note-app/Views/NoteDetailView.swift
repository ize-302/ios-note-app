//
//  NoteDetailView.swift
//  ios-note-app
//
//  Created by Adavize Ozorku on 12/08/2023.
//

import SwiftUI

struct NoteDetailView: View {
    let note: NotesData
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(note.title).font(.title).padding(.bottom, 10)
                Text(note.body)
                Spacer()
            }
            Spacer()
        }.padding(.leading, 20).padding(.trailing, 20)
    }
}

struct NoteDetailView_Previews: PreviewProvider {
    static var note = NotesData.sampleData[0]

    static var previews: some View {
        NoteDetailView(note: note)
    }
}
