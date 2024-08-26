//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 26/8/24.
//

import SwiftUI

struct GridBootcamp: View {
    /*
    let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 50, maximum: 300),
                 spacing: nil,
                 alignment: nil),
        GridItem(.adaptive(minimum: 150, maximum: 300),
                 spacing: nil,
                 alignment: nil)
        
//        GridItem(.fixed(50),
//                 spacing: nil,
//                 alignment: nil)
        
//        GridItem(.flexible(),
//                 spacing: nil,
//                 alignment: nil)
    ]
    */
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        
        ScrollView {
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content:
                    {
                        Section(header:
                                    Text("Section 1")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)
                            .padding()
                        ) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .frame(height: 150)
                            }
                        }
                        
                        Section(header:
                                    Text("Section 2")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.red)
                            .padding()
                        ) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(.green)
                                    .frame(height: 150)
                            }
                        }
                        
                    })
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
