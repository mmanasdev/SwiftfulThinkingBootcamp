//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 21/8/24.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary
//                Color(uiColor: UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
//            .shadow(color: Color.red, radius: 10, x: 10.0, y: 20.0)
        
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 10.0, y: 20.0)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
//            .preferredColorScheme(.light)
    }
}
