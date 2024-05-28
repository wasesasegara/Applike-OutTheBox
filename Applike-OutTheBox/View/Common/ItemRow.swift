//
//  ItemRow.swift
//  Applike-OutTheBox
//
//  Created by Bis  on 28/05/24.
//

import SwiftUI

struct ItemRow: View {
    let icon: Image?
    let iconWidth: CGFloat?
    let title: String
    
    init(icon: Image?, indent: CGFloat? = nil, title: String) {
        self.icon = icon
        self.iconWidth = indent
        self.title = title
    }
    
    var body: some View {
        HStack {
            if let icon = icon {
                icon
                    .frame(width: iconWidth, alignment: .leading)
            } else {
                Color(.clear)
                    .frame(width: iconWidth ?? 0)
            }
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    List {
        ItemRow(icon: nil, title: "Without icon")
        ItemRow(icon: nil, indent: 18, title: "Without icon and indent 18")
        ItemRow(icon: Image(systemName: "sparkles"), indent: 18, title: "With icon and indent 18")
        ItemRow(icon: Image(systemName: "sparkles"), indent: 30, title: "With icon and indent 30")
    }
}
