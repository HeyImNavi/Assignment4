//
//  WebService.swift
//  Assignment5
//
//  Created by Aaron Arreola and Calvin Darley
//  Due 11/19/2024
//

import Foundation

class WebService {
    func fetchPresidents(url: URL?) async throws -> [PresidentPerson] {
        guard let url = url else {
            return []
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let presidents = try? JSONDecoder().decode([PresidentPerson].self, from: data)
        
        return presidents ?? []
    }
}
