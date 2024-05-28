//
//  FeatureRow.swift
//  Applike-OutTheBox
//
//  Created by Bis  on 28/05/24.
//

import SwiftUI

struct FeatureRow: View {
    let feature: Feature
    
    var body: some View {
        ItemRow(icon: feature.icon, indent: 24, title: feature.title)
    }
}

#Preview {
    FeatureRow(feature: .animations)
}
