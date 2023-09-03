//
//  WhatsNew.swift
//  Whats New
//
//  Created by Kovs on 06.11.2022.
//


import SwiftUI

@available(iOS 14.0, *)
public struct WhatsNew: View {
    
    public var featureObject: Feature
    public var title: String = "What's new?"
    public var color: Color  = .purple
    
    public var buttonTitle: String = "Continue"
    public var buttonColor: Color  = .blue
    public var buttonCornerRadius: CGFloat = 20
    
    public var action: (() -> Void)
    
    public init(featureObject: Feature, title: String, color: Color, buttonTitle: String, buttonColor: Color, buttonCornerRadius: CGFloat, action: @escaping () -> Void) {
        self.featureObject = featureObject
        self.title = title
        self.color = color
        self.buttonTitle = buttonTitle
        self.buttonColor = buttonColor
        self.buttonCornerRadius = buttonCornerRadius
        self.action = action
    }
    
    
    public var body: some View {
            ScrollView {
                VStack(spacing: 70) {
                    Spacer()
                    
                    VStack {
                        Text(title)
                            .font(.largeTitle)
                            .bold()
                        Text("Version \(featureObject.version)")
                            .font(.title)
                            .foregroundColor(.gray)
                    }
                    
                    
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(featureObject.new, id: \.self) { newFeature in
                            WNSubView(feature: newFeature, color: color)
                                .padding(.trailing, 20)
                        }
                    }
                    
                    
                    Button(action: {
                        action()
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: buttonCornerRadius, style: .continuous)
                                .frame(height: 50)
                                .padding(.horizontal, 65)
                            Text(buttonTitle)
                                .font(.body)
                                .bold()
                                .foregroundColor(.white)
                        }
                    })
                    
//                    Spacer()
//                    Spacer()
                    // end of VStack
                }
            } // ScrollView
    }
}

@available(iOS 14.0, *)
struct WhatsNew_Previews: PreviewProvider {
    
    static func printIt() {
        print()
    }
    
    static var previews: some View {
        WhatsNew(featureObject: Feature(version: "1.0", new: [Feature.New(body: "This is a body to test how does it look like! There's also the second line if something will go wrong", icon: "chevron.left", title: "Don't worget about the title", subtitle: "Subtitle is what can help"),
                    Feature.New(body: "This is a body to test how does it look like! There's also the second line if something will go wrong", icon: "chevron.left", title: "Don't worget about the title", subtitle: "Subtitle is what can help"),
                        Feature.New(body: "This is a body to test", icon: "chevron.left", title: "This is it", subtitle: "Subtitle is what can help"),
                                Feature.New(body: "This is a body to test how does it look like! There's also the second line if something will go wrong", icon: "chevron.left", title: "Don't worget about the title", subtitle: "Subtitle is what can help"),
                                            Feature.New(body: "This is a body to test how does it look like! There's also the second line if something will go wrong", icon: "chevron.left", title: "Don't worget about the title", subtitle: "Subtitle is what can help")]), title: "What's new?", color: .purple, buttonTitle: "Continue", buttonColor: .blue, buttonCornerRadius: 20) {
            printIt()
        }
    }
}
