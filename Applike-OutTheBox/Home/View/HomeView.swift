//
//  HomeView.swift
//  Applike-OutTheBox
//
//  Created by Bis  on 28/05/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink {
                        AboutView()
                    } label: {
                        Text("About")
                    }
                }
                Section {
                    ForEach(Feature.allCases, id: \.self) { feature in
                        NavigationLink {
                            DummyPage(title: feature.title)
                        } label: {
                            Text(feature.title)
                        }
                    }
                }
            }
            .navigationTitle("Applike Out The Box")
        }
        .navigationTitle("Applike Out The Box")
    }
}

#Preview {
    HomeView()
}
