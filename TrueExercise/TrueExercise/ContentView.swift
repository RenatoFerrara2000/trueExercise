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
        ListItem(name: "Black", color: .black),
        ListItem(name: "Yellow", color: .yellow)
    ]
    
    var body: some View {
        NavigationStack {
            List($itemArray) { $item in
                ItemRow(item: $item)
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
