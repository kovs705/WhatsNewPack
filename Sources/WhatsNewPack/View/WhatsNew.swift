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
    
    // MARK: - Body
    public var body: some View {
        innerContent
    }
    
    @ViewBuilder var innerContent: some View {
        VStack {
            Spacer()
            
            title
            versionSubTitle
            
            listOfFeatures
            
            acceptButton
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    // MARK: - Components
    @ViewBuilder var title: some View {
        Text("Hey, WhatsNew?!")
    }
    
    @ViewBuilder var versionSubTitle: some View {
        Text("Version 1.0.0")
    }
    
    @ViewBuilder var listOfFeatures: some View {
        VStack {
            Text("Feature 1")
            Text("Feature 2")
            Text("Feature 3")
        }
        .background(
            featuresCardBackground
        )
    }
    
    @ViewBuilder var featuresCardBackground: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray)
    }
    
    @ViewBuilder var acceptButton: some View {
        Button {
            dismiss()
        } label: {
            Text("Cool!")
        }
    }
    
    
}

#Preview {
    SwiftUIView()
}
