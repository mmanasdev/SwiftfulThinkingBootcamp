//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 21/9/24.
//

import SwiftUI

struct PickerBootcamp: View {
    
//    @State var selection: String = "1"//Wheel
    @State var selection: String = "Most Recent"
    @State var filterOptions: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        
        let attributes:[NSAttributedString.Key : Any] = [
            .foregroundColor: UIColor.white
            
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }

    
    var body: some View {
        
        Picker(selection: $selection) {
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        } label: {
            Text("Options")
        }
        .pickerStyle(SegmentedPickerStyle())
//        .background(.red)
        
        /*
        Picker(selection: $selection) {
            ForEach(filterOptions, id: \.self) { option in
                HStack {
                    Text(option)
                    Image(systemName: "heart.fill")
                }
                .tag(option)
            }
        } label: {
            HStack {
                Text("Filter: ")
                Text(selection)
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(.blue)
            .cornerRadius(10)
            .shadow(color: .blue.opacity(0.3), radius: 10)
        }
        .pickerStyle(MenuPickerStyle())

        
        VStack {
            
            HStack {
                Text("Age: ")
                Text(selection)
            }
            
            Picker(selection: $selection) {
                ForEach(18..<100) { number in
                    Text("\(number)")
                        .font(.headline)
                        .foregroundColor(.red)
                        .tag("\(number)")
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(WheelPickerStyle())
//            .background(.gray.opacity(0.3))
            
        }
*/
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
