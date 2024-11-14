//
//  PresidentDetailView.swift
//  Assignment5
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/19/2024
//

import SwiftUI

struct PresidentDetailView: View {
    
    var president: PresidentViewModel
    
    //Number formatter - Taken from Text Example
    var formatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        return formatter
    }
    
    var body: some View {
        
        VStack(spacing: 16) {
            
            //Name of President
            Text(president.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
            
            //What number the President is
            Text("\(NSNumber(value: president.number), formatter: formatter) President of the United States") //need to implement number formatter
                .bold()
            
            //Start and End Date of the President
            Text("(\(president.startDate) to \(president.endDate))")
            
            //Presidential Images
            AsyncImage(url: URL(string: president.url), content: { image in
                image.resizable().scaledToFit().clipShape(RoundedRectangle(cornerSize: CGSize(width: 16, height: 16)))
            }, placeholder: {
                ProgressView()
            })
            .padding(.horizontal)
            
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

