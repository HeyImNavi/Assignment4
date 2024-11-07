//
//  PresidentListViewModel.swift
//  Assignment4
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
        
        guard let path = Bundle.main.path(forResource: "presidents", ofType: "plist"), let xml = FileManager.default.contents(atPath: path) else {
            fatalError("Unable to access property list presidents.plist")
        }
        do {
            var presidents = try PropertyListDecoder().decode([PresidentPerson].self, from: xml)
            presidents.sort {
                $0.number < $1.number
            }
            self.presidents = presidents.map(PresidentViewModel.init)
        } catch {
            fatalError("\(error): Unable to decode property list presidents.plist")
        }
    }//end of getPresidents()
}//end of class
