//
//  ButtonStyle.swift
//  Applike-OutTheBox
//
//  Created by Bis  on 29/05/24.
//

import SwiftUI

fileprivate extension View {
    func defaultButtonConfig(_ configuration: ButtonStyleConfiguration) -> some View {
        self.cornerRadius(8)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct BorderedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .background(.gray.opacity(0.3))
            .foregroundStyle(.blue)
            .defaultButtonConfig(configuration)
    }
}

struct BorderedDestructiveButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .background(.gray.opacity(0.3))
            .foregroundStyle(.red)
            .defaultButtonConfig(configuration)
    }
}

struct BorderedProminentButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .background(.blue)
            .foregroundStyle(.white)
            .defaultButtonConfig(configuration)
    }
}

struct BorderedProminentDestructiveButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .background(.red)
            .foregroundStyle(.white)
            .defaultButtonConfig(configuration)
    }
}
