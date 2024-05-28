//
//  DateAndTimePickerPage.swift
//  Applike-OutTheBox
//
//  Created by Bis  on 29/05/24.
//

import SwiftUI

struct DateAndTimePickerPage: View {
    @State private var compactDatePickerSelection: Date = Date()
    @State private var graphicalDatePickerSelection: Date = Date()
    @State private var wheelDatePickerSelection: Date = Date()
    @State private var hourAndMinutePickerSelection: Date = Date()
    @State private var wheelHourAndMinuteDatePickerSelection: Date = Date()
    
    var body: some View {
        List {
            Section("Compact Date Picker") {
                DatePicker(selection: $compactDatePickerSelection) {
                    Text("Title")
                }
            }
            
            Section("Graphical Date Picker") {
                DatePicker(
                    selection: $graphicalDatePickerSelection) {}
                .datePickerStyle(GraphicalDatePickerStyle())
            }
            
            Section("Wheel Date Picker") {
                DatePicker(
                    selection: $wheelDatePickerSelection) {}
                .datePickerStyle(WheelDatePickerStyle())
            }
            
            Section("Hour and Minute Date Picker") {
                DatePicker(
                    selection: $hourAndMinutePickerSelection,
                    displayedComponents: [.hourAndMinute]) {
                    Text("Title")
                }
            }
            
            Section("Wheel Date Picker (Hour and Minute)") {
                DatePicker(
                    selection: $wheelHourAndMinuteDatePickerSelection,
                    displayedComponents: [.hourAndMinute]) {}
                .datePickerStyle(WheelDatePickerStyle())
            }
        }
        .navigationTitle("Date & Time Pickers")
    }
}

#Preview {
    DateAndTimePickerPage()
}
