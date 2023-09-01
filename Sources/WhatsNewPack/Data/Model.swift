//
//  Model.swift
//
//
//  Created by Eugene Kovs on 01.09.2023.
//

import Foundation

public struct Feature: Codable, Hashable {
    
    public let version: String
    public let new: [New]
    
    public struct New: Codable, Hashable {
        
        public let body: String
        public let icon: String
        public let title: String
        public let subtitle: String
    }
}
