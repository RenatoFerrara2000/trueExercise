//
//  detailView.swift
//  TrueExercise
//
//  Created by Renato Ferrara on 29/06/25.
//
import SwiftUI

struct DetailView: View {
    @Binding var item: ListItem
    var  body: some View {
        Rectangle()
            .fill(item.color)
        
        Button {
            item.isFavorite.toggle()
        } label: {
            Image(systemName: (item.isFavorite ? "star.fill" : "star"))

        }
    }
}

#Preview {
    @Previewable @State var exampleItem = ListItem.example
    DetailView(item:  $exampleItem)

}

