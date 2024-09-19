//
//  TextfieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Miguel Mañas Alvarez on 19/9/24.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type Something here...", text: $textFieldText)
        //            .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(.gray).opacity(0.3).cornerRadius(10)
                    .foregroundColor(.red)
                .font(.headline)
                
                Button {
                    if textIsAppropiate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropiate() ? .blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                .disabled(!textIsAppropiate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()

            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    func textIsAppropiate() -> Bool {
        // check text
        return textFieldText.count >= 3
    }
}

struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}
