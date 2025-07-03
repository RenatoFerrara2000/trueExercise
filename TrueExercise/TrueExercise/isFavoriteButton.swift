//
//  isFavoriteButton.swift
//  TrueExercise
//
//  Created by Renato Ferrara on 03/07/25.
//

import SwiftUI

struct isFavoriteButton: View {
    @Binding var item: ListItem
    var body: some View {
        Button {
            item.isFavorite.toggle()
        } label: {
            Image(systemName: (item.isFavorite ? "star.fill" : "star"))
                .foregroundColor(item.isFavorite ? .yellow : .gray)

        }
    }
}

#Preview {
    @Previewable @State var exampleItem = ListItem.example
     isFavoriteButton(item: $exampleItem)
}
 
