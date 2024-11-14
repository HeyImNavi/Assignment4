//
//  PresidentListView.swift
//  Assignment5
//
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/19/2024
//

import SwiftUI

struct PresidentListView: View {
    
    //set viewModel to PresidentViewModel
    @State private var presidentModel = PresidentListViewModel()
    
    var body: some View {

        NavigationStack {
            //list for Presidents
            List {
                ForEach(presidentModel.presidents, id: \.number) { presidentVM in
                    NavigationLink(destination: PresidentDetailView(president: presidentVM)) {
                        PresidentRow(president: presidentVM)
                    }//end of NavigationLink
                }//end of ForEach
            }//end of list
                .listStyle(.plain)
                .navigationTitle("Presidents")
                .navigationBarTitleDisplayMode(.inline)
                .task(priority: .high) {
                    await presidentModel.getPresidents()
                }
        }//end of NavigationStack
    }//end of some View
}//end of struct View

#Preview {
    PresidentListView()
}
