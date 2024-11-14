//
//  PresidentViewModel.swift
//  Assignment5
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/19/2024
//

import Foundation

struct PresidentViewModel: Decodable {
    
    var president: PresidentPerson

    //Variables inside the presidentArray
    var name: String {
        president.name
    }
    
    var number: Int {
        president.number
    }
    
    var startDate: String
    {
        president.startDate
    }
    
    var endDate: String
    {
        president.endDate
    }
    
    var nickname: String
    {
        president.nickname
    }
    
    var party: String 
    {
        president.party
    }
    
    var url: String
    {
        president.url
    }

    static var `default`: PresidentViewModel {
        let president = PresidentPerson(name: "George Washington", number: 1, startDate: "April 30, 1789", endDate: "March 3, 1797", nickname: "Father of His Country" , party: "None", url: " https://www.potus.com/wp-content/uploads/07_andrew_jackson_1_gallery.jpg")
        return PresidentViewModel(president: president)
    }
}//end of class
