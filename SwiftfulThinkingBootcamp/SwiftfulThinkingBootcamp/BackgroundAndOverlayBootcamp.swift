//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 21/8/24.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        /*
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 100, height: 100, alignment: .center)
            .background(
//                .red
//                LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                Circle()
                    .fill(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100, alignment: .center)
            )
//            .frame(width: 120, height: 120, alignment: .center)
            .background(
                Circle()
                    .fill(LinearGradient(colors: [.blue, .red], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 120, height: 120, alignment: .center)
            )
        
        
        Circle()
            .fill(.pink)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay {
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .background(
            Circle()
                .fill(.purple)
                .frame(width: 110, height: 110, alignment: .center)
            )
         
         
        
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
                , alignment: .topLeading
            )
            .background(
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                , alignment: .bottomTrailing
            )
         
         */
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
            Circle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.red, .blue]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .frame(width: 100, height: 100)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0.0, y: 10.0)
                .overlay(
                    Circle()
                        .fill(.blue)
                        .frame(width: 35, height: 35)
                        .overlay(
                        Text("5")
                            .font(.headline)
                            .foregroundColor(.white)
                        )
                        .shadow(color: .black.opacity(0.3), radius: 10, x: 0.0, y: 10.0)
                    , alignment: .bottomTrailing
                )
            )
            
        
        
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
