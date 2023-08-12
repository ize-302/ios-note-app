//
//  NewNoteView.swift
//  ios-note-app
//
//  Created by Adavize Ozorku on 12/08/2023.
//

import SwiftUI
import ModalView

struct NewNoteView: View {
    var body: some View {
        ModalPresenter {
            ModalLink(destination: MyModalView.init(dismiss:)) {
                Text("New")
                    .padding(.horizontal, 12)
                    .frame(height: 30)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(8)
            }
        }
    }
}

struct MyModalView: View {
    @State private var title = ""
    @State private var note = ""
    
    var dismiss: () -> ()
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Text("New note")
                Spacer()
                Button(action: dismiss) {
                    Image(systemName: "xmark")
                        .font(.system(size: 15, weight: .bold, design: .rounded))
                        .foregroundColor(.secondary)
                }
            }.padding([.top], 20).padding(.bottom, 10)
            Divider()
            VStack(alignment: .leading, spacing: 40) {
                TextField("Title here...", text: $title).font(.title2)
                TextField("Body here...", text: $note, axis: .vertical)
                Spacer()
                HStack {
                    Spacer()
                    Text("Create note")
                        .padding(.horizontal, 20)
                        .frame(height: 40)
                        .foregroundColor(.white)
                        .background(.green)
                    .cornerRadius(6)
                }
            }.padding(.top, 20)
        }.padding([.leading, .trailing], 20)
        Spacer()
    }
}

struct NewNoteView_Previews: PreviewProvider {
    static var previews: some View {
        NewNoteView()
    }
}
