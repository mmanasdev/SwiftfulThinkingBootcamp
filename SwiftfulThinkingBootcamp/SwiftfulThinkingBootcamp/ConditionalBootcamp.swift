//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 31/8/24.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    @State var isLoading: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//
//            Button("Rectangle Button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 200, height: 100)
//            }
//
//            Spacer()
            
            Button("Is loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            Spacer()
            
        }
        
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
