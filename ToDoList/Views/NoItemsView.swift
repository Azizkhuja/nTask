//
//  NoItemsView.swift
//  ToDoList
//
//  Created by Aziz on 11/10/22.
//

import SwiftUI

struct NoItemsView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("Hi")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you productive person? If yes please click the Add button and you can add new todos📝")
                NavigationLink(destination: AddView(), label: {
                    Text("Add something🥳")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .multilineTextAlignment(.center)
            .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsView()
                .navigationTitle("Text")
        }
    }
}
