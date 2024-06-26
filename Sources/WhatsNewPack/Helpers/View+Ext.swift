//
//  View+Ext.swift
//  WhatsNewPack
//
//  Created by Eugene Kovs on 07.06.2024.
//  https://github.com/kovs705
//

import SwiftUI

public extension View {
    /// Presents WhatsNew screen on your @State or @AppStorage parameter
    /// - Parameters:
    ///   - isPresented: Binding<Bool> when to present the screen
    ///   - feature: Feature is the class which contains info about version and array of your new features
    ///   - theme: Theme is more complex, since it has different variables. Try theme.createRandomInstance() method to see some ideas (**ONLY IN DEBUG**)
    @ViewBuilder func connectWhatsNew(
        isPresented: Binding<Bool>,
        feature: Feature?,
        theme: Theme?
    ) -> some View {
        sheet(isPresented: isPresented, content: {
            WhatsNewView(
                feature: feature ?? Feature.createRandomInstance(),
                theme: theme ?? Theme.createRandomInstance()
            )
        })
    }
}
