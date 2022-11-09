//
//  ListRowView.swift
//  ToDoList
//
//  Created by Aziz on 11/8/22.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(item.title)
            Spacer()
        }
    }
}


struct ListRowView_Previews: PreviewProvider {
    static var itemOne = ItemModel(title: "First", isCompleted: false)
    static var itemTwo = ItemModel(title: "Second", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: itemOne)
            ListRowView(item: itemTwo)
        }.previewLayout(.sizeThatFitsg)
    }
}
