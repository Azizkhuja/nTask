//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Aziz on 11/9/22.
//

import Foundation

class ListViewModel {
    @Published var items: [ItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "First", isCompleted: false),
           ItemModel(title: "Second", isCompleted: true),
           ItemModel(title: "Therd", isCompleted: true)
        ]
        
        items.append(contentsOf: newItems)
    }
    
    func onDelteItem (indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func onMoveItem (from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
