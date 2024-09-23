//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 23/9/24.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2008)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        
        VStack {
            Text("Selected Date is:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.headline)
            
            //        DatePicker("Select a Date", selection: $selectedDate)
            //        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                    DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                        .accentColor(Color.red)
                        .datePickerStyle(
            //                GraphicalDatePickerStyle()
                            CompactDatePickerStyle()
            //                WheelPickerStyle()
                        )
        }
        

    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
