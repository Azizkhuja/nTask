//
//  ItemModel.swift
//  ToDoList
//
//  Created by Aziz on 11/9/22.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
