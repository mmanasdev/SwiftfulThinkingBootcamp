//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 21/8/24.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [.cyan, .blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
                
//                RadialGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    center: .topLeading,//.center,
//                    startRadius: 5,
//                    endRadius: 400)
                
                AngularGradient(gradient: Gradient(colors: [.red, .blue]),
                                center: .topLeading,
                                angle: .degrees(180 + 45))
                
                
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
