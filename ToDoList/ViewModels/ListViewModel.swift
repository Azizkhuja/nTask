//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Aziz on 11/9/22.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    let itemsKey: String = "items_list"
    
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
    
    func addItem(title: String){
        let newItem = ItemModel(title: title, isCompleted: false)
        
        items.append(newItem)
    }
    
    func updateItem (item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }){
            items[index] = item.updateComplition()
        }
    }
    
    func saveItems () {
        if let encodedData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
}
