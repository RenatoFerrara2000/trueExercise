//
//  ContentView.swift
//  TrueExercise
//
//  Created by Renato Ferrara on 29/06/25.
//

import SwiftUI

struct ContentView: View {
    @State  var itemArray: [ListItem] = [
        ListItem(name: "Red", color: .red),
        ListItem(name: "Blue", color: .blue),
        ListItem(name: "Green", color: .green),
        ListItem(name: "Black", color: .black),
        ListItem(name: "Yellow", color: .yellow)
     ]
    
    var body: some View {
        
             NavigationStack {
                 List($itemArray) { item in
                    ItemRow(item: item)

                }
                .navigationDestination(for: ListItem.self) { item in
                    DetailView(itemColor: item.color)
                }
            }
         }
}

#Preview {
    ContentView()
}
