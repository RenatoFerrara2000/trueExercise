//
//  ListItem.swift
//  TrueExercise
//
//  Created by Renato Ferrara on 29/06/25.
//
import SwiftUI

// Identifiable for List, Hashable for navigationLink
struct ListItem: Identifiable, Hashable{
    let id = UUID()
    let name: String
    let color: Color
    var isFavorite = false
    
    static let example = ListItem(name: "Example", color: Color.pink)
}
