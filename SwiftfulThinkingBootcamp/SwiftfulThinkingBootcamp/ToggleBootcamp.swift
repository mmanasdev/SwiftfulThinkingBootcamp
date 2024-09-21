//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 21/9/24.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Status: ")
                Text(toggleIsOn ?   "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn) {
                Text("Change status")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
