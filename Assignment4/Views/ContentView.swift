//
//  ContentView.swift
//  Assignment5
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/19/2024
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //VStack to hold contents of the Assignment
        VStack()
        {
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
