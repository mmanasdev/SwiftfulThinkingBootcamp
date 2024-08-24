//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 24/8/24.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    //Swift create it for us (backgroundColor, count, title)
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(title)")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
            .frame(width: 150, height: 150)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}



struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        
        HStack {
            InitializerBootcamp(count: 55, fruit: .apple)
            InitializerBootcamp(count: 46, fruit: .orange)
        }
    }
}
