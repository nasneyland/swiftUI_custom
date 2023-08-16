//
//  ContentView.swift
//  customUI
//
//  Created by najin on 2023/08/16.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        List {
            Text("hello")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
