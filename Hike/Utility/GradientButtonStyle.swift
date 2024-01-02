//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Ivan Romero on 02/01/2024.
//

import Foundation
import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Nil Coalescing
                configuration.isPressed ?
                    //When user pressed the button
                    .linearGradient(
                        colors: [.customGrayMedium, .customGrayLight],
                        startPoint: .top,
                        endPoint: .bottom)
                :
                    //When the button is not pressed
                    .linearGradient(
                        colors: [.customGrayLight, .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom)
            )
            .cornerRadius(40
            )
    }
}
