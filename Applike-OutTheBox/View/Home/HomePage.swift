//
//  HomePage.swift
//  Applike-OutTheBox
//
//  Created by Bis  on 28/05/24.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink {
                        AboutPage()
                    } label: {
                        ItemRow(icon: Image(systemName: "sparkles"), indent: 24, title: "About")
                    }
                }
                Section {
                    ForEach(Feature.allCases, id: \.self) { feature in
                        NavigationLink {
                            switch feature {
                            case .buttons: ButtonsPage()
                            default: DummyPage(title: feature.title)
                            }
                        } label: {
                            FeatureRow(feature: feature)
                        }
                    }
                }
            }
            .navigationTitle("Out The Box")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "swift")
                }
            }
        }
    }
}

#Preview {
    HomePage()
}
