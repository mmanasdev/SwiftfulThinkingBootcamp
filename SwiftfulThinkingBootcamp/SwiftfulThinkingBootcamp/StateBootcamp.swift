//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 28/8/24.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    var body: some View {
        
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            //content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("BUTTON 1") {
                        backgroundColor = .red
                        myTitle = "1 pressed"
                        count += 1
                    }
                    
                    Button("BUTTON 2") {
                        backgroundColor = .purple
                        myTitle = "2 pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
        
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
