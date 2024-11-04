//
//  PresidentPerson.swift
//  Assignment4
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/12/2024
//

import Foundation


struct PresidentPerson: Decodable {
    var name = ""
    var number = 0
    var startDate = ""
    var endDate = ""
    var nickname = ""
    var party = ""
    
    /* Not sure if this is entirely necessary
    private enum CodingKeys: String, CodingKey {
        case name = "Name"
        case number = "Number"
        case startDate = "Start Date"
        case endDate = "End Date"
        case nickname = "Nickname"
        case party = "Party"
    }
    */
}

