//
//  WhatsNew.swift
//  WhatsNewPack
//
//  Created by Eugene Kovs on 07.06.2024.
//  https://github.com/kovs705
//

import SwiftUI

@available(iOS 14.0, *)
public struct SwiftUIView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var feature: Feature
    var theme: Theme
    
    // MARK: - Body
    public var body: some View {
        innerContent
            .background(theme.backgroundColor)
    }
    
    @ViewBuilder var innerContent: some View {
        VStack {
            
            titleAndVersion
            
            listOfFeatures
            
            acceptButton
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.vertical)
    }
    
    // MARK: - Title and Version
    @ViewBuilder var titleAndVersion: some View {
        VStack(spacing: 10) {
            title
            versionSubTitle
        }
        .padding(.top)
    }
    
    @ViewBuilder var title: some View {
        Text("Hey, WhatsNew?!")
            .font(.largeTitle)
            .bold()
    }
    
    @ViewBuilder var versionSubTitle: some View {
        Text("Version \(feature.version)")
    }
    
    // MARK: - Features
    @ViewBuilder var listOfFeatures: some View {
        Spacer()
        
        VStack {
            ForEach(feature.new, id: \.self) { feature in
                WNSubView(feature: feature,
                          color: theme.iconBackgroundColor)
            }
        }
        .background(
            featuresCardBackground
        )
        .padding()
        
        Spacer()
        Spacer()
    }
    
    @ViewBuilder var featuresCardBackground: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(uiColor: .systemGray5))
    }
    
    // MARK: - Accept button
    @ViewBuilder var acceptButton: some View {
        AnimatedButton(action: {
            dismiss()
        }, cornerRadius: 15) {
            acceptButtonContent
        }
        .padding(.horizontal)
    }
    
    @ViewBuilder var acceptButtonContent: some View {
        Text(theme.buttonText)
            .foregroundStyle(theme.buttonTextColor)
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(theme.buttonBackgroundColor)
            )
    }
    
    
}

// MARK: - Preview
#if DEBUG
#Preview {
    SwiftUIView(feature: Feature.createRandomInstance(),
                theme: Theme.createRandomInstance())
}
#endif
