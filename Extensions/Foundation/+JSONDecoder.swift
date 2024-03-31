//
//  +JSONDecoder.swift
//  TaskManager
//
//  Created by Ibrahim Nasser Ibrahim on 31/03/2024.
//

import Foundation

extension JSONDecoder {
    func decode<T: Decodable>(forResource fileName: String) -> T? {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        
        return try? decode(data: data)
    }
    
    func decode<T: Decodable>(data: Data) throws -> T? {
        return try decode(T.self, from: data)
    }
}
