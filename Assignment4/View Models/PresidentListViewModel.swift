//
//  PresidentListViewModel.swift
//  Assignment4
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/12/2024
//

import Foundation

@Observable
class PresidentListViewModel {
    //Declaring an array to hold values for presidents
    var presidents: [PresidentViewModel] = []
    
    func getPresidents() async {
        
        do {
            var presidents = try await WebService().fetchCharacters(url: Constants.Urls.charactersURL)
            presidents.sort {
                $0.name < $1.name
            }
            
            self.presidents = presidents.map(PresidentViewModel.init)
        } catch {
            print(error)
        }
    }

/*
    //load contents of plist into presidentArray
    func loadPropertyListData() {
        
        guard let path = Bundle.main.path(forResource: "presidents", ofType: "plist"), let xml = FileManager.default.contents(atPath: path) else {
            fatalError("Unable to access property list presidents.plist")
        }
        
        do {
            presidentArray = try PropertyListDecoder().decode([PresidentStruct].self, from: xml)
            
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
*/
}
