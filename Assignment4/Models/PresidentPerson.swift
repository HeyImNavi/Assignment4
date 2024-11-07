//
//  PresidentPerson.swift
//  Assignment4
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/12/2024
//

import Foundation


struct PresidentPerson: Decodable {
    var name: String
    var number: Int
    var startDate: String
    var endDate: String
    var nickname: String
    var party: String

    
    private enum CodingKeys: String, CodingKey {
        case name = "Name"
        case number = "Number"
        case startDate = "Start Date"
        case endDate = "End Date"
        case nickname = "Nickname"
        case party = "Political Party"
    }
}

