//
//  ListView.swift
//  ToDoList
//
//  Created by Aziz on 11/8/22.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("Dummy text")
                Spacer()
            }
        }
        .navigationTitle("nTask 📝")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
