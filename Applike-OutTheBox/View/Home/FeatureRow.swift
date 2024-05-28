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
        HStack {
            feature.icon
            Text(feature.title)
            Spacer()
        }
    }
}

#Preview {
    FeatureRow(feature: .animations)
}
