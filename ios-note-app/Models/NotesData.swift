//
//  NotesData.swift
//  ios-note-app
//
//  Created by Adavize Ozorku on 12/08/2023.
//

import Foundation

struct NotesData: Identifiable {
    let id: UUID
    let title: String
    let body: String
    
    init(id: UUID = UUID(), title: String, body: String) {
        self.id = id
        self.title = title
        self.body = body
    }
}


extension NotesData {
    static let sampleData: [NotesData] = [
        NotesData (
            title: "Hello swift",
            body: "Greetings to swift"
        ),
        NotesData (
            title: "Hello ts",
            body: "Greetings to TypeScript"
        ),
        NotesData (
            title: "Hello JS",
            body: "Greetings to Javascript"
        ),
        NotesData (
            title: "Hello PHP",
            body: "Greetings to PHP"
        ),
        NotesData (
            title: "Hello Python",
            body: "Greetings to Python"
        )
    ]
}
