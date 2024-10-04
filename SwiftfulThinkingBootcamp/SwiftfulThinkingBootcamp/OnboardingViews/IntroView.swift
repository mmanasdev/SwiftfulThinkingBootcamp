//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 4/10/24.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed-in") var currentUserSignIn: Bool = false
    
    var body: some View {
        ZStack {
            //background
            RadialGradient(
                gradient: Gradient(colors: [.pink, .purple]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea(.all)
            
            if currentUserSignIn {
                ProfileView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal: .move(edge: .bottom)))
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
