//
//  WNSubView.swift
//  WhatsNewPack
//
//  Created by Kovs on 02.09.2022.
//  https://github.com/kovs705
//

import SwiftUI

@available(iOS 15.0, *)
public struct WNSubView: View {
    
    public var feature: Feature.New
    public var color: Color
    
    public init(feature: Feature.New, color: Color) {
        self.feature = feature
        self.color = color
    }
    
    public var body: some View {
        
        HStack(spacing: 15) {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(color)
                    .frame(width: 50, height: 50)
                Image(systemName: feature.icon)
                    .foregroundColor(.white)
                    .font(.title)
            }
            .padding(.leading, 20)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(feature.title)
                    .font(.body)
                    .bold()
                    .lineLimit(1)
                    .multilineTextAlignment(.leading)
                Text(feature.body)
                    .bold()
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 90, alignment: .leading)
    }
}

@available(iOS 15.0, *)
struct WNSubView_Previews: PreviewProvider {
    
    static let featureExample = Feature(version: "1.0", new: [Feature.New(title: "Don't worget about the title", body: "This is a body to test how does it look like! There's also the second line if something will go wrong", icon: "chevron.left")])
    
    static var previews: some View {
        WNSubView(feature: featureExample.new.first!, color: .green)
    }
}
