//
//  CardView.swift
//  Hike
//
//  Created by Ivan Romero on 27/12/2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - CARD
        ZStack {
            
            CustomBackgroundView()
            
            VStack {
                //MARK: - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                        Spacer()
                        
                        Button {
                          // ACTION: Show a Sheet
                            print("The button was pressed")
                        } label: {
                            CustomButtonView()
                        }
                        
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }//: HEADER
                .padding(.horizontal, 30)
                
                //MARK: - MAIN CONTENT
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                Color("ColorIndigoMedium"),
                                Color("ColorSalmonLight")
                                ],
                                startPoint: .top,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                    .scaledToFit()
                }
                
                //MARK: - FOOTER
            }
        }
        //: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
