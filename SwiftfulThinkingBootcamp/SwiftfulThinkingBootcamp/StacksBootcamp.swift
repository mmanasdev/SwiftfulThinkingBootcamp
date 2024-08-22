//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 22/8/24.
//

import SwiftUI

struct StacksBootcamp: View {
    //VStacks -> Vertical
    //HStacks -> Horizontal
    //ZStacks -> zIndex (back to front)
    
    var body: some View {
        /*
        VStack {
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        
        HStack {
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
         
        ZStack {
            Rectangle()
                .fill(.red)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(.green)
                .frame(width: 130, height: 130)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        
        VStack (alignment: .leading, spacing: 0) {
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.green)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 25, height: 25)
                }
                .background(.white)
            }
            .background(.black)
        }
        
        VStack(alignment: .center, spacing: 20) {
            Text("5")
                .font(.largeTitle)
                .underline()
            Text("Items in your cart")
                .font(.caption)
                .foregroundColor(.gray)
        }
         */
        
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
        
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
