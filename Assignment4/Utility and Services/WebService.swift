//
//  WebService.swift
//  Assignment4
//
//  Created by Aaron Arreola and Calvin Darley
//  Taken from Kurt McMahon
//  Due 11/12/2024
//

import Foundation

class WebService {
    func fetchCharacters(url: URL?) async throws -> [PresidentPerson] {
        guard let url = url else {
            return []
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let characters = try? JSONDecoder().decode([PresidentPerson].self, from: data)
        
        return characters ?? []
    }
}
