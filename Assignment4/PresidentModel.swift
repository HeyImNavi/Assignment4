//
//  PresidentModel.swift
//  Assignment4
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/12/2024
//

import Foundation


struct PresidentModel: Decodable {
    var name = ""
    var number = ""
    var startDate = ""
    var endDate = ""
    var nickname = ""
    var party = ""
    
    private enum CodingKeys: String, CodingKey {
        case name = "Name"
        case number = "Number"
        case startDate = "Start Date"
        case endDate = "End Date"
        case nickname = "Nickname"
        case party = "Party"
    }
}
