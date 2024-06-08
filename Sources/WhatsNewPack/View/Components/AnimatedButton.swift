//
//  AnimatedButton.swift
//  WhatsNewPack
//
//  Created by Eugene Kovs on 08.06.2024.
//  https://github.com/kovs705
//

import SwiftUI

struct AnimatedButton<ViewButton: View>: View {
    var action: () -> Void
    var scale: CGFloat = 0.97
    var cornerRadius: CGFloat

    @State private var tap = false
    @ViewBuilder var label: () -> ViewButton

    var body: some View {
        Button {
            withAnimation(.spring(response: 0.30, dampingFraction: 0.7)) {
                tap = true

                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    action()
                    tap = false
                }
            }
        } label: {
            label()
        }
        .scaleEffect(tap ? scale : 1.0)
        .animation(.spring(response: 0.15), value: tap)
        .buttonStyle(AnimatedPressingButtonStyle(scale: scale, cornerRadius: cornerRadius))
    }
}

struct AnimatedPressingButtonStyle: ButtonStyle {
    var scale: CGFloat
    var cornerRadius: CGFloat

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .overlay {
                Color.gray.opacity(configuration.isPressed ? 0.1 : 0)
                    .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            }
            .scaleEffect(configuration.isPressed ? scale : 1.0)
            .animation(.spring(response: 0.55, dampingFraction: 0.5), value: configuration.isPressed)
    }
}

#Preview {
    AnimatedButton(action: {
        //
    }, cornerRadius: 15) {
        RoundedRectangle(cornerRadius: 15)
            .fill(.gray.opacity(0.3))
    }
    .frame(width: 200, height: 100)
}
