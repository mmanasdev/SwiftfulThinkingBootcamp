//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 21/8/24.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
//            .scaledToFill()
//            .font(.largeTitle)
//            .font(.system(size: 200))
            .foregroundColor(.red)
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
