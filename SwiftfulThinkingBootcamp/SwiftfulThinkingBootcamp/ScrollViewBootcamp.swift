//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 25/8/24.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack {
//
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 300, height: 300)
//                }
//
//            }
//        }
        
        ScrollView {
            LazyVStack {//Putting lazy in stack just load the views that are visible
                ForEach(0..<10) { index in
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                
                            }
                        }
                    }
                    
                }
            }
        }
        
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
