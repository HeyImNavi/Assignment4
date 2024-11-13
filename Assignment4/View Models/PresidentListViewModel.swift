//
//  PresidentListViewModel.swift
//  Assignment5
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/12/2024
//

import Foundation
import Observation

@Observable
class PresidentListViewModel {
    
    //Declaring an array to hold values for presidents
    var presidents: [PresidentViewModel] = []
    
    func getPresidents() async {
        
        do {
            var characters = try await WebService().fetchPresidents(url: Constants.Urls.charactersURL)
            characters.sort {
                $0.name < $1.name
            }
        } catch {
            print(error)
        }
    }//end of getPresidents()
}//end of class
