//
//  isFavoriteButton.swift
//  TrueExercise
//
//  Created by Renato Ferrara on 03/07/25.
//

import SwiftUI

struct IsFavoriteButton: View {
    @Binding var item: ListItem
    var body: some View {
        Button {
            item.isFavorite.toggle()
        } label: {
            Image(systemName: item.isFavorite ? "star.fill" : "star.slash")
                .foregroundColor(item.isFavorite ? .yellow : .gray)
                .tint(item.isFavorite ? item.color : .gray)
        }
        .accessibilityLabel(item.isFavorite ? "remove from favorites" : "add to favorites")
        .accessibilityHint("Double tap to \(item.isFavorite ? "remove" : "add")  favorite status for \(item.color)")
    }
}

#Preview {
    @Previewable @State var exampleItem = ListItem.example
    IsFavoriteButton(item: $exampleItem)
}

