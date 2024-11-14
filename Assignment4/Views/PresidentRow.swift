//
//  PresidentRow.swift
//  Assignment5
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/19/2024
//

import SwiftUI

struct PresidentRow: View {
    
    var president: PresidentViewModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(president.name)
                    .font(.headline)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(president.party)
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }//end of VStack
        }//end of HStack
    }//end of some View
}//end of struct View

#Preview {
    PresidentRow(president: PresidentViewModel.default)
}
