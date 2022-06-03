//
//  ItemModel.swift
//  TodoList
//
//  Created by Joseph Madibekov on 02/06/2022.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: self.id, title: self.title, isCompleted: !self.isCompleted)
    }
}
