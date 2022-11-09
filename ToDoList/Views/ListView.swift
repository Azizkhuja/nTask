//
//  ListView.swift
//  ToDoList
//
//  Created by Aziz on 11/8/22.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "First", isCompleted: false),
       ItemModel(title: "Second", isCompleted: true),
       ItemModel(title: "Therd", isCompleted: true)
    ]
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: onDelteItem)
            .onMove(perform: onMoveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("nTask 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()
        ))
    }
    
    func onDelteItem (indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func onMoveItem (from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
