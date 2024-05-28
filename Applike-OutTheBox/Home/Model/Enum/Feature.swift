//
//  Feature.swift
//  Applike-OutTheBox
//
//  Created by Bis  on 28/05/24.
//

import Foundation

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
}
