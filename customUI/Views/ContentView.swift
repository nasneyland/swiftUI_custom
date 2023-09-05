//
//  ContentView.swift
//  customUI
//
//  Created by najin on 2023/08/16.
//

import SwiftUI
import CoreData
import NJTimer

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: NJEmojiPickerView()) {
                    Text("NJEmojiPicker")
                }
                NavigationLink(destination: NJPickerView()) {
                    Text("NJPicker")
                }
            }
            .navigationTitle("CustomUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
