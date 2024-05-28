//
//  ButtonsPage.swift
//  Applike-OutTheBox
//
//  Created by Bis  on 29/05/24.
//

import SwiftUI

struct ButtonsPage: View {
    var body: some View {
        List {
            VStack(spacing: 10) {
                Button {} label: {
                    Text("Plain button")
                }
                .buttonStyle(PlainButtonStyle())
                
                Button {} label: {
                    Text("Plain destructive button")
                }
                .buttonStyle(PlainButtonStyle())
                
                Button {} label: {
                    Text("Borderless button")
                }
                
                Button {} label: {
                    Text("Borderless destructive button")
                        .foregroundStyle(.red)
                }
                
                Button {} label: {
                    Text("Bordered button")
                }
                .buttonStyle(BorderedButtonStyle())
                
                Button {} label: {
                    Text("Bordered destructive button")
                }
                .buttonStyle(BorderedDestructiveButtonStyle())
                
                Button {} label: {
                    Text("Bordered prominent button")
                }
                .buttonStyle(BorderedProminentButtonStyle())
                
                Button {} label: {
                    Text("Bordered prominent destructive button")
                }
                .buttonStyle(BorderedProminentDestructiveButtonStyle())
            }
            .padding(.all, 20)
            .frame(maxWidth: .infinity)
            .listRowInsets(EdgeInsets())
        }
        .listRowSeparator(.hidden)
        .navigationTitle("Buttons")
    }
}

#Preview {
    ButtonsPage()
}
