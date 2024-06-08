//
//  FeatureMock.swift
//  WhatsNewPack
//
//  Created by Eugene Kovs on 08.06.2024.
//  https://github.com/kovs705
//

import Foundation

#if DEBUG

public extension Feature {
    
    static func createRandomInstance() -> Feature {
        SampleContent.features.randomElement()!
    }
    
    static let mockedData: [Feature] = generateMockedData(count: 5)
    
    static func generateMockedData(count: Int) -> [Feature] {
        return (0..<count).map { _ in createRandomInstance() }
    }
}

#endif
