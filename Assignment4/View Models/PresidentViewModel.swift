//
//  PresidentViewModel.swift
//  Assignment4
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/12/2024
//

import Foundation

//@Observable
struct PresidentViewModel {
    
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
}//end of class
