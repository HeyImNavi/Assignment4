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
            
            //Name of President
            Text(president.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
            
            //What number the President is
            Text("\(president.number) President of the United States") //need to implement number formatter
                .bold()
            
            //Start and End Date of the President
            Text("(\(president.startDate) to \(president.endDate))")
            
            //Presidential Seal Image
            Image(.seal)
            
            //Nickname of the President
            Text("Nickname")
                .bold()
            Text("\(president.nickname)")
            
            //Political Party of the President
            Text("Political Party")
                .bold()
            Text(president.party)
            
            Spacer()
        }//end of VStack
    }//end of some View
}//end of Struct view

#Preview {
    PresidentDetailView(president: PresidentViewModel.default)
}
