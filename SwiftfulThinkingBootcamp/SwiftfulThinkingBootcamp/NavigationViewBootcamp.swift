//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 13/9/24.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello, word") {
                    MyOtherScreen()
                }
                
                Text("Hello")
                Text("Hello")
            }
        }
        .navigationTitle("All Inboxes")
//        .navigationBarTitleDisplayMode(.inline)
//        .navigationBarHidden(true)
        .navigationBarItems(
            leading:
                HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                }
                ,
            trailing: NavigationLink(destination: {
                MyOtherScreen()
            }, label: {
                Image(systemName: "gear")
            })
            .accentColor(.red)
        )
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color
                .green
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("GreenScreen")
                .navigationBarHidden(true)
            
            VStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("BACK BUTTON")
                }
                NavigationLink("Click Here", destination: Text("3rd Screen"))
            }
            
            
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
