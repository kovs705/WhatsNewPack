//
//  Theme.swift
//  WhatsNewPack
//
//  Created by Eugene Kovs on 07.06.2024.
//  https://github.com/kovs705
//

import SwiftUI

public struct Theme {
    public var backgroundColor: Color
    
    public var iconColor: Color
    public var iconBackgroundColor: Color
    
    public var titleFont: Font
    public var bodyFont: Font
    public var textColor: Color
    
    public var buttonBackgroundColor: Color
    public var buttonTextColor: Color
    public var buttonText: String
    
    public init
    (
        backgroundColor: Color = Color(uiColor: .systemBackground),
        iconColor: Color = .white,
        iconBackgroundColor: Color = .blue,
        
        titleFont: Font = .body, bodyFont: Font = .subheadline,
        textColor: Color = Color(uiColor: .label),
        
        buttonBackgroundColor: Color = .blue,
        buttonTextColor: Color = .white,
        buttonText: String = "Cool!")
    {
        self.backgroundColor = backgroundColor
        self.iconColor = iconColor
        self.iconBackgroundColor = iconBackgroundColor
        
        self.titleFont = titleFont
        self.bodyFont = bodyFont
        self.textColor = textColor
        
        self.buttonBackgroundColor = buttonBackgroundColor
        self.buttonTextColor = buttonTextColor
        self.buttonText = buttonText
    }
}
