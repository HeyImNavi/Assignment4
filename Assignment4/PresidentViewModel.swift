//
//  PresidentViewModel.swift
//  Assignment4
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/12/2024
//

import Foundation
import Observation

@Observable
class PresidentViewModel {
    
    //Declaring an array to hold values for presidents
    var presidentArray: [PresidentPerson] = []
    
    //Variables inside the presidentArray
    var name: String = ""
    var number: Int = 0
    var startDate: String = ""
    var endDate: String = ""
    var nickname: String = ""
    var party: String = ""
    
    //load contents of plist into presidentArray
    func loadPropertyListData() {
        
        guard let path = Bundle.main.path(forResource: "presidents", ofType: "plist"), let xml = FileManager.default.contents(atPath: path) else {
            fatalError("Unable to access property list presidents.plist")
        }
        
        do {
            presidentArray = try PropertyListDecoder().decode([PresidentPerson].self, from: xml)
            
            if let firstPresident = presidentArray.first {
                name = firstPresident.name
                number = firstPresident.number
                startDate = firstPresident.startDate
                endDate = firstPresident.endDate
                nickname = firstPresident.nickname
                party = firstPresident.party
            }
            /*
            name = presidentArray[0].name
            number = presidentArray[0].number
            startDate = presidentArray[0].startDate
            endDate = presidentArray[0].endDate
            nickname = presidentArray[0].nickname
            party = presidentArray[0].party
             */
        } catch {
            fatalError("Unable to decode property list presidents.plist")
        }
    }
}
