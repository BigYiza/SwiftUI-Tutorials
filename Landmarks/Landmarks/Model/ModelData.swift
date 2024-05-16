//
//  ModelData.swift
//  Landmarks
//
//  Created by 张义 on 2024/5/15.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ flieName: String) -> T {
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: flieName, withExtension: nil) else {
        fatalError("Couldn't find \(flieName) in main bundle.")
    }
    
    do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(flieName) from main bundle:\n\(error)")
        }

    do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(flieName) as \(T.self):\n\(error)")
        }
}


final class a {
    static let instance = a()
    
    private init() {
        
    }
}

