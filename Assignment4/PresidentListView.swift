//
//  PresidentListView.swift
//  Assignment4
//
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/12/2024
//

import SwiftUI

struct PresidentListView: View {
    var body: some View {
        
        let items = ["Item 1", "Item 2", "Item 3"]

        NavigationStack {
            //list for Presidents
            List(items, id: \.self) { item in
                Text(item)
            }//end of list
                .listStyle(.plain)
                .navigationTitle("Presidents")
                .navigationBarTitleDisplayMode(.inline)
        }//end of NavigationStack
        
    }//end of some View
}//end of struct View

#Preview {
    PresidentListView()
}
