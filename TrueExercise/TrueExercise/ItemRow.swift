//
//  ItemRow.swift
//  TrueExercise
//
//  Created by Renato Ferrara on 29/06/25.
//
import SwiftUI

struct ItemRow: View {
    @Binding var item: ListItem
    var body: some View {
         NavigationLink(value: item) {
                 Text(item.name)
                    .foregroundStyle(item.color)
            }
         IsFavoriteButton(item: $item)
    }
}

#Preview {
    @Previewable @State var exampleItem = ListItem.example
    ItemRow(item:  $exampleItem)
}

