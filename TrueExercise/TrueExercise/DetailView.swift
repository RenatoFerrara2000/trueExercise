//
//  detailView.swift
//  TrueExercise
//
//  Created by Renato Ferrara on 29/06/25.
//
import SwiftUI

struct DetailView: View {
    @Binding var item: ListItem
    
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .fill(item.color)
                .frame(height: 200)
                .cornerRadius(12)
            
            Text(item.name)
            
            IsFavoriteButton(item: $item)
        }
        .padding()
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    @Previewable @State var exampleItem = ListItem.example
    DetailView(item:  $exampleItem)
    
}

