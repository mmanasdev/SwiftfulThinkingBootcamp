//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 29/8/24.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
    
        ZStack {
            //background
            Color.blue.ignoresSafeArea()
            
            //content
            contentLayer
        }
        
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: Color.red)
            MyItem(title: "Oranges", count: 10, color: Color.orange)
            
            MyItem(title: "Bananas", count: 34, color: Color.yellow)
        }
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
