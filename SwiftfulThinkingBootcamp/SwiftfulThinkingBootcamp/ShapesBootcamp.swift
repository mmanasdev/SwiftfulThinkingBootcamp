//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 21/8/24.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//            .fill(.blue)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(.blue, lineWidth: 30)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [10]))
        
//            .trim(from: 0.2, to: 1.0)
//            .stroke(.purple, lineWidth: 50)
        
//        Ellipse()
//            .frame(width: 200, height: 100)
        
//        Capsule(style: .continuous)
//            .frame(width: 200, height: 100)
        
//        Rectangle()
//            .frame(width: 200, height: 100)
        
        RoundedRectangle(cornerRadius: 50)
            .frame(width: 300, height: 200)
    
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
