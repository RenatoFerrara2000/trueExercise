//
//  AlternativeItemRow.swift
//  TrueExercise
//
//  Created by Renato Ferrara on 04/07/25.
//
import SwiftUI


/// Built to follow the indication as written, but having two buttons on the same row that do 2 different things can create confusion or mistakes, so I prefer  the swipe  version as shwn in ItemRow

struct AlternativeItemRow: View {
    @Binding var item: ListItem
    var body: some View {
        HStack{
            IsFavoriteButton(item: $item)
                .buttonStyle(.plain) // Prevents navigation when tapping favorite button
            
            NavigationLink(value: item) {
                Text(item.name)
                    .foregroundStyle(item.color)
                    .accessibilityLabel("\(item.name), \(item.isFavorite ? "is favorite" : "is not favorite")")
                    .accessibilityHint("Double tap to open detail view")
            }
        }
    }
}

#Preview {
    @Previewable @State var exampleItem = ListItem.example
    AlternativeItemRow(item:  $exampleItem)
}

