//
//  detailView.swift
//  TrueExercise
//
//  Created by Renato Ferrara on 29/06/25.
//
import SwiftUI

struct DetailView: View {
    var itemColor: Color
    var  body: some View {
        Rectangle()
            .fill(itemColor)
    }
}

#Preview {
    DetailView(itemColor: .blue)
}

