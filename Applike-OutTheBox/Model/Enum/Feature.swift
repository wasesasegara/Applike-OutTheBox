//
//  Feature.swift
//  Applike-OutTheBox
//
//  Created by Bis  on 28/05/24.
//

import SwiftUI

enum Feature: CaseIterable {
    case animations
    case buttons
    case dateAndTimePickers
    case haptics
    case lists
    case maps
    case navigation
    case pickers
    case progressViews
    case refresh
    case search
    case steppersAndSliders
    case styling
    case textEntry
    case titlesAndToolbars
    case toggle
    
    var title: String {
        switch self {
        case .animations: return "Animations"
        case .buttons: return "Buttons"
        case .dateAndTimePickers: return "Date & Time Pickers"
        case .haptics: return "Haptics"
        case .lists: return "Lists"
        case .maps: return "Maps"
        case .navigation: return "Navigation"
        case .pickers: return "Pickers"
        case .progressViews: return "ProgressViews"
        case .refresh: return "Refresh"
        case .search: return "Search"
        case .steppersAndSliders: return "Steppers & Sliders"
        case .styling: return "Styling"
        case .textEntry: return "Text Entry"
        case .titlesAndToolbars: return "Titles & Toolbars"
        case .toggle: return "Toggle"
        }
    }
    
    private var iconSystemImageName: String {
        switch self {
        case .animations: return "video.circle.fill"
        case .buttons: return "rectangle.and.hand.point.up.left.fill"
        case .dateAndTimePickers: return "calendar.circle.fill"
        case .haptics: return "hand.tap.fill"
        case .lists: return "list.bullet.circle.fill"
        case .maps: return "map.circle.fill"
        case .navigation: return "location.circle.fill"
        case .pickers: return "lasso"
        case .progressViews: return "rays"
        case .refresh: return "arrow.counterclockwise.circle.fill"
        case .search: return "magnifyingglass.circle.fill"
        case .steppersAndSliders: return "slider.horizontal.3"
        case .styling: return "paintpalette.fill"
        case .textEntry: return "pencil.circle.fill"
        case .titlesAndToolbars: return "textformat"
        case .toggle: return "switch.2"
        }
    }
    
    var icon: Image {
        Image(systemName: iconSystemImageName)
    }
}
