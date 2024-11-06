//
//  PresidentDetailView.swift
//  Assignment4
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/12/2024
//

import SwiftUI

struct PresidentDetailView: View {
    
    var president: PresidentViewModel
    
    var body: some View {
        VStack(spacing: 16) {
            Text(president.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
            Spacer()
        }//end of VStack
    }//end of some View
}//end of Struct view
