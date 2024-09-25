//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 25/9/24.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    //MARK: Properties
    @State var data: [String] = [
        "apples", "oranges", "bananas"
    ]
    @State var showAlert: Bool = false
    
    //MARK: Body
    
    //Working copy - things to do: 1) Fix title
    
    // MIGUEL - Working copy - things to do:
    /*
     1) Fix title
     2) Fix alert
     */
    
    var body: some View {
        NavigationView { // Start: Nav
            ZStack {
                // Background
                Color.red
                    .edgesIgnoringSafeArea(.all)
                
                // Foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(
                    trailing:
                        Button("Alert") {
                            showAlert.toggle()
                        }
                )
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert!")
            }
            }
        } // End: Nav
        
    }
    
    /// This is a foreground Layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView { // Start: ScrollV
            Text("Hello, World!")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }// End: ScrollV
    }
    
    //MARK: Functions
    
    /// Gets an Alert with specified title
    ///
    /// This functions creates and returns an alert immediately. This alert will have a title based on the text parameter but it will NOT have a message
    /// ```
    /// getAlert(text: "Hi!") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an Alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

//MARK: Preview
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
