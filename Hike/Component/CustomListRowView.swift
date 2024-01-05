//
//  CustomListRowView.swift
//  Hike
//
//  Created by Ivan Romero on 04/01/2024.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            // Content
            if let rowContent = rowContent {
                Text(rowContent)
                    .foregroundStyle(.primary)
                .fontWeight(.heavy)
            } else if let rowLinkLabel = rowLinkLabel,
                      let rowLinkDestination = rowLinkDestination {
                Link(rowLinkLabel, destination: URL(string: "https://\(rowLinkDestination)")!)
                    .foregroundStyle(.link)
                    .fontWeight(.heavy)
            }
            
        } label: {
            // Label
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List() {
        CustomListRowView(rowLabel: "Designer",
                          rowIcon: "paintpalette",
                          rowContent: "John Doe",
                          rowTintColor: .pink,
                          rowLinkLabel: nil,
                          rowLinkDestination: nil)
    }
}
