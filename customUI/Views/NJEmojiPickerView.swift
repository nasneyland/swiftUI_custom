//
//  NJEmojiPickerView.swift
//  customUI
//
//  Created by najin shin on 2023/08/25.
//

import SwiftUI
import NJEmojiPicker

struct NJEmojiPickerView: View {
    
    @State var showEmojiPicker = false
    @State var emoji: [String] = []
    
    var body: some View {
        VStack(spacing: 20) {
            Button {
                showEmojiPicker = true
            } label: {
                Text("select emoji")
            }

            if !emoji.isEmpty {
                Text(emoji.joined())
                    .padding(10)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
        }
        .sheet(isPresented: $showEmojiPicker) {
            NJEmojiPicker($emoji,
                          language: .ko,
                          column: 5,
                          multipleSelect: true,
                          showsIndicators: false,
                          accentColor: .blue,
                          textColor: .white)
        }
    }
}

struct NJEmojiPickerView_Previews: PreviewProvider {
    static var previews: some View {
        NJEmojiPickerView()
    }
}
