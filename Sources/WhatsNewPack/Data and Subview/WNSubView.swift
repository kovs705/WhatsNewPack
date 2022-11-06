//
//  WNSubView.swift
//  Whats New
//
//  Created by Kovs on 02.09.2022.
//

import SwiftUI

@available(iOS 14.0, *)
public struct WNSubView: View {
    
    public var feature: Feature.New
    
    public init(feature: Feature.New, color: Color) {
        self.feature = feature
        self.color = color
    }
    
    public var color: Color
    
    public var body: some View {
        
        HStack(spacing: 20) {
            Spacer()
            // icon:
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(color)                        // custom color
                    .frame(width: 50, height: 50)
                Image(systemName: feature.icon)
                    .foregroundColor(.white)
                    .font(.title)
            }
            .navigationViewStyle(.stack)
            
            VStack(alignment: .leading) {
                Text(feature.title)
                    .font(.body)
                    .bold()
                Text(feature.subtitle)
                    .bold()
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(feature.body)
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .lineLimit(2)
            }
            .frame(minWidth: 220, alignment: .leading)
            
            
            Spacer()
            Spacer()
        }
        .frame(height: 70)
        // end of HStack
    }
}

@available(iOS 14.0, *)
struct WNSubView_Previews: PreviewProvider {
    static var previews: some View {
        WNSubView(feature: featuresData[0].new[0], color: .green)
            .previewLayout(.fixed(width: 322, height: 75))
    }
}
