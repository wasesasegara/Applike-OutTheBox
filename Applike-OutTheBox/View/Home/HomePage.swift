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
                        Text("About")
                    }
                }
                Section {
                    ForEach(Feature.allCases, id: \.self) { feature in
                        NavigationLink {
                            DummyPage(title: feature.title)
                        } label: {
                            FeatureRow(feature: feature)
                        }
                    }
                }
            }
            .navigationTitle("Applike Out The Box")
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
