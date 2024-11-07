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
    
    //set viewModel to PresidentViewModel
    @State private var presidentModel = PresidentListViewModel()
    
    //variables
    @State private var presidentIndex = 0
    @State private var partyIndex = 0
    
    var body: some View {

        NavigationStack {
            //list for Presidents
            List {
                ForEach(presidentModel.presidents, id: \.number) { presidentVM in
                    NavigationLink(destination: PresidentDetailView(president: presidentVM)) {
                        PresidentRow(president: presidentVM)
                    }//end of NavigationLink
                    /*
                    VStack {
                        Text(president.name)
                            .font(.headline)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(president.party)
                            .font(.caption)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }//end of VStack
                    */
                }//end of ForEach
            }//end of list
            .listStyle(.plain)
                .navigationTitle("Presidents")
                .navigationBarTitleDisplayMode(.inline)
                /*.onAppear {
                    presidents.loadPropertyListData()
                }*/
        }//end of NavigationStack
    }//end of some View
}//end of struct View

#Preview {
    PresidentListView()
}
