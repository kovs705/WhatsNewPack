//
//  ThemeMock.swift
//  WhatsNewPack
//
//  Created by Eugene Kovs on 08.06.2024.
//  https://github.com/kovs705
//

import Foundation

#if DEBUG

public extension Theme {
    
    static func createRandomInstance() -> Theme {
        SampleContent.themes.randomElement()!
    }
    
}

#endif
