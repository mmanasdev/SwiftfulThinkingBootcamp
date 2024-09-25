//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 25/9/24.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This text is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This text is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This text is BLACK")
                        .foregroundColor(.black)
                    Text("This text is WHITE")
                        .foregroundColor(.white)
                    Text("This text is RED")
                        .foregroundColor(.red)
                    Text("This text is globaly adaptive!")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This text is localy adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBootcamp()
                .preferredColorScheme(.light)
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
        }
        
    }
}
