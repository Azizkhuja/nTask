//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Aziz on 11/8/22.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    @State var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
