//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 25/8/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String]  = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack {
            
//                ForEach(0..<10) { index in
//                    HStack {
//                        Circle()
//                            .frame(width: 30, height: 30)
//                        Text("Hi: \(index)")
//                    }
//
//                }
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }

        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
