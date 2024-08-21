//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 21/8/24.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
//        Image("therock")
//            .resizable()
//            .scaledToFill()
//            .scaledToFit()
//            .frame(width: 300, height: 200)
//            .clipped()
//            .cornerRadius(30)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25.0)
//                Ellipse()
//                Circle()
//            )
        
        Image("google")
//            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.red)

    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
