//
//  DummyPage.swift
//  Applike-OutTheBox
//
//  Created by Bis  on 28/05/24.
//

import SwiftUI

struct DummyPage: View {
    let title: String
    
    var body: some View {
        Text(title)
    }
}

#Preview {
    DummyPage(title: "Page Name")
}
