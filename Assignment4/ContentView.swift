//
//  ContentView.swift
//  Assignment4
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/12/2024
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //VStack to hold contents of the Assignment
        VStack()
        {
            //Title of the App
            Text("Presidents")
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
            
            //call PresidentListView
            PresidentListView()
        }//end of VStack
        
        //Push text to top of the screen
        Spacer()
    }//end of some View
}//end of struct View

#Preview {
    ContentView()
}
