//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 24/9/24.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = Color.red
    
    var body: some View {
        VStack {
            
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
//                "\(sliderValue)"
            )
            .foregroundColor(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(value: $sliderValue,
                   in: 1...5,
                   step: 1.0,
                   onEditingChanged: {_ in
                color = .green
            }, minimumValueLabel: Text("1"),
                   maximumValueLabel: Text("5"),
                   label: {
                Text("Title")
            })
                .accentColor(.red)
                .padding(10)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
