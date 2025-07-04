//
//  ContentView.swift
//  TrueExercise
//
//  Created by Renato Ferrara on 29/06/25.
//

import SwiftUI

struct ContentView: View {
    @State private var itemArray: [ListItem] = [
        ListItem(name: "Red", color: .red),
        ListItem(name: "Blue", color: .blue),
        ListItem(name: "Green", color: .green),
        ListItem(name: "Pink", color: .pink),
        ListItem(name: "Yellow", color: .yellow)
    ]
    
    var body: some View {
        NavigationStack {
            List($itemArray) { $item in
                // Swipe approach
               ItemRow(item: $item)
                
              // Two-button approach
              //  AlternativeItemRow(item: $item)
             }   .navigationTitle("Colors")
                .navigationDestination(for: ListItem.self) { item in
                    if let index = itemArray.firstIndex(where: { $0.id == item.id }) {
                        DetailView(item: $itemArray[index])
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
