//
//  Data.swift
//  Whats New
//
//  Created by Kovs on 31.08.2022.
//

import SwiftUI

public struct Feature: Codable, Hashable {
    /// place properties of json features..
    
    public let version: String
    public let new: [New]
    
    public struct New: Codable, Hashable {
        
        public let body: String
        public let icon: String
        public let title: String
        public let subtitle: String
    }
}

// MARK: - Load features from JSON file:
public var featuresData: [Feature] = load(fileName: "features.json")

    // MARK: - JSON loader
@available(iOS 14.0, *)
public class UserData: ObservableObject {
    @Published public var features = featuresData
    
    public init() {}
}

public func load<T: Decodable>(fileName: String) -> T {
    let data: Data
    
    // getting data from main bundle:
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
        else {
            fatalError("Can't find \(fileName) in main bundle.")
        }
    
    // Attaching data from file to the "data" property
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) into data... - \n\(error)")
    }
    
    // Decode data, parse and return it to user:
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't decode data, pase \(fileName) as \(T.self): \n\(error)")
    }
}

