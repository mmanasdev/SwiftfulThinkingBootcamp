//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 11/9/24.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.move(edge: .bottom))
//                    .animation(.easeInOut)
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
                    .transition(.asymmetric(insertion: .move(edge: .bottom),
                                            removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.easeInOut)
                    
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
